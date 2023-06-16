package Movie;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

@WebServlet("/movieControl")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2, location = "C:/Temp/img")
public class MovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MovieDAO dao;
	private ServletContext ctx;
	private final String START_PAGE = "movie/Main.jsp";

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new MovieDAO();
		ctx = getServletContext();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");

		dao = new MovieDAO();
		// 자바 리플렉션을 사용해 if(switch) 없이 요청에 따라 구현 메소드가 실행되도록 구성
		Method m;
		String view = null;

		// action 파라미터 없이 접근한 경우
		if (action == null) {
			action = "listMovies";
		}
		
		try {
			m = this.getClass().getMethod(action, HttpServletRequest.class);
			view = (String) m.invoke(this, request);
			
			m = this.getClass().getMethod(action, HttpServletRequest.class);
			view = (String) m.invoke(this, request);
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
			ctx.log("요청 action 없음!!");
			request.setAttribute("error", "action 파라미터가 잘못되었습니다!!");
			view = START_PAGE;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (view.startsWith("redirect:/")) {
			String rview = view.substring("redirect:/".length());
			response.sendRedirect(rview);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}
	
	public String listMovies(HttpServletRequest request) {
		List<Movie> list;
		try {
			list = dao.getAll();
			request.setAttribute("movieslist", list);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("목록 생성 과정에서 문제 발생!!");
			request.setAttribute("error", "목록이 정상적으로 처리되지 않았습니다!!");
		}
		return "Main.jsp";
	}

	public String getMovies(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			Movie m = dao.getMovie(id);
			request.setAttribute("movies", m);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("가져오는 과정에서 문제 발생!!");
			request.setAttribute("error", "정상적으로 가져오지 못했습니다!!");
		}
		return "Main.jsp";
	}
	
	public String addMovie(HttpServletRequest request) {
		Movie n = new Movie();
		try {
			Part part = request.getPart("file");
			String filename = getFilename(part);

			if (filename != null && !filename.isEmpty()) {
				part.write(filename);
			}
			BeanUtils.populate(n, request.getParameterMap());
			n.setPhoto("/img/" + filename);
			dao.addMovie(n);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("영화 추가 과정에서 문제 발생!!");
			request.setAttribute("error", "영화가 정상적으로 등록되지 않았습니다!!");
			return listMovies(request);
		}
		return "redirect:/movieControl?action=listMovies";
	}
	
	private String getFilename(Part part) {
		String filename = null;
		String header = part.getHeader("content-disposition");
		System.out.println("Header => " + header);
		int start = header.indexOf("filename=");
		filename = header.substring(start + 10, header.length() - 1);
		ctx.log("파일명:" + filename);
		return filename;
	}
}
