package co.micol.comon;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ArrayTest
 */
@WebServlet("/ArrayTest")
public class ArrayTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArrayTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name= request.getParameter("name");
		String age= request.getParameter("age");
		String hobby[] = request.getParameterValues("hobby");
		String gender = request.getParameter("gender");
		
		//데이터 처리 작성 및 돌려보낼페이지 만들기
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("이름: "+name+"<br/>");
		out.print("나이: "+age+"<br/>");
		out.print("취미: ");

		for(String a : hobby) {
			out.print(a+"  ");
		}
		out.print("<br/> 성별: "+gender+"<br/>");
		out.print("<a href='index.jsp'>홈 가기</a>");
	
	}

}
