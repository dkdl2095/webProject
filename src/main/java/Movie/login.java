package Movie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String savedUsername = "1234";
        String savedPassword = "1234";

        String storedUsername = savedUsername; // 저장된 아이디
        String storedPassword = savedPassword; // 저장된 비밀번호

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (username.equals(storedUsername) && password.equals(storedPassword)) {
            out.println("<h1>로그인 성공</h1>");
            // 메인페이지-> 수정 네비게이션 바 언락

            // 로그인 성공 시 Main.jsp로 리다이렉션
            response.sendRedirect("Main2.jsp");
        } else {
            out.println("<h1>로그인 실패</h1>");
        }
    }
}