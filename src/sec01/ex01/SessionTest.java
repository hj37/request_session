package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//최초 서블릿 요청 
//요청주소 : http://localhost:8090/pro11/sess 

//서블릿 요청시 session내장객체 메모리 영역에 name값을 바인딩 합니다.
@WebServlet("/sess")
public class SessionTest extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) 
			throws ServletException, IOException {
		//클라이언트의 웹브라우저로 응답(출력)할 데이터 종류 설정 
		response.setContentType("text/html;charset=utf-8");
		//클라이언트의 웹브라우저로 출력할 스트림 통로 
		PrintWriter pw = response.getWriter();
		/*session객체 메모리 영역 얻기*/
		//request객체의 getSession()메소드를 호출하면 새로운 session내장객체 메모리를 얻어 올 수 있다.
		HttpSession session = request.getSession();

		//session객체 메모리 영역에 데이터를 바인딩(저장)함.
		session.setAttribute("name", "이순신");
		
		pw.println("<html><body>");
		pw.println("<h1>세션영역에 이름을 바인딩 했습니다.</h1>");
		pw.println("<a href='/pro11/test01/sessionTest1.jsp'>두 번째 페이지로 이동하기 </a>");
		pw.println("</body></html>");
	}
}
