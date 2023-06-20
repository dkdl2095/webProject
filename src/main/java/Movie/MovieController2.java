package Movie;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/MovieController2")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2, location = "c:/Temp/img")
public class MovieController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MovieDAO2 dao;
	private ServletContext ctx;
	private final String START_PAGE = "movie/Main2.jsp";

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new MovieDAO2();
		ctx = getServletContext();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");

		dao = new MovieDAO2();
		// 자바 리플렉션을 사용해 if(switch) 없이 요청에 따라 구현 메소드가 실행되도록 구성
		Method m;
		String view = null;

		// action 파라미터 없이 접근한 경우
		if (action == null) {
			action = "listMoviesMain";
		}
		
		try {
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
	
	public String listMoviesMain(HttpServletRequest request) {
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

	public String listMoviesSelect2(HttpServletRequest request) {
		String title = request.getParameter("movietitle");
		try {
			Movie m = dao.getMoviTitle(title);
			request.setAttribute("moviesSelect", m);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("목록 생성 과정에서 문제 발생!!");
			request.setAttribute("error", "목록이 정상적으로 처리되지 않았습니다!!");
		}
		return "MovieSelect2.jsp";
	}
	// 날짜를 선택해서 jsp로 넘겨주는 함수 만들 예정 2023-06-18 00:32
		public void getDate(HttpServletRequest request, HttpServletResponse response) {
			response.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = response.getWriter();
				
				// 선택된 날짜 가져오기
		        String selectedDate = request.getParameter("datepicker");

		        // 선택된 날짜 유효성 검사
		        if (selectedDate != null && !selectedDate.isEmpty()) {
		            // 선택된 날짜를 처리하는 추가 작업 수행
		            // 예: 데이터베이스에 저장, 다른 동작 수행 등

		            // 선택된 날짜를 다음 페이지로 전달하기 위해 속성 설정
		            request.setAttribute("selectedDate", selectedDate);

		            // 다음 페이지로 이동
		            request.getRequestDispatcher("다음 페이지 경로").forward(request, response);
		        } else {
		            out.println("올바른 날짜를 선택해주세요.");
		        }
			} catch (Exception e) {
				e.printStackTrace();
			}   
		}
	}