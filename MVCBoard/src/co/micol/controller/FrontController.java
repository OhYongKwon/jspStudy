package co.micol.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.command.BoardEdit;
import co.micol.command.BoardList;
import co.micol.command.BoardWirte;
import co.micol.command.Command;
import co.micol.command.MainCommand;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> list = null;
	
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		list = new HashMap<String, Command>();
		list.put("/index.do",new MainCommand()); //url에서 index.do로오면 maincommand를 실행
		list.put("/boardlist.do",new BoardList());
		list.put("/boardlEdit.do",new BoardEdit());
		list.put("/boardWirte.do",new BoardWirte());
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();//  /MVCBoard/index.do
		String context = request.getContextPath(); //  /MVCBoard
		String path = url.substring(context.length()); // /index.do

		Command subcommand = list.get(path);
		subcommand.excute(request,response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

}
