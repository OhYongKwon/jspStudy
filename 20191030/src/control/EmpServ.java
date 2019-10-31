package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmpDao;
import dto.Employee;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class EmpServ
 */
@WebServlet("/EmpServ")
public class EmpServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		response.setContentType("text/html; utf-8");
		PrintWriter out = response.getWriter();
		EmpDao dao = new EmpDao();
		
		Employee emp = new Employee();
		
		String sal = request.getParameter("salary");
		String pn = request.getParameter("phoneNumber");
		String job = request.getParameter("jobId");
		
		if(action == null) {
			StringBuffer sb = new StringBuffer();
			sb.append("<h3>No Result</h3>");
			sb.append("<p>*************</p>");
			out.println(sb.toString());
		}else if(action.equals("insert")) {
			String fn = request.getParameter("firstName");
			String ln = request.getParameter("lastName");
			String em = request.getParameter("email");
			String hd = request.getParameter("hireDate");
			
			emp.setFirstName(fn);
			emp.setLastName(ln);
			emp.setEmail(em);
			emp.setHireDate(hd);
			emp.setSalary(Integer.parseInt(sal));
			emp.setPhoneNumber(pn);
			emp.setJobId(job);
			
			dao.insertEmp(emp);
			
			response.sendRedirect("empList.jsp");
		}else if(action.equals("update")) {
			String empId = request.getParameter("employee_id");
			
			emp.setPhoneNumber(pn);
			emp.setJobId(job);
			emp.setSalary(Integer.parseInt(sal));
			emp.setEmployeeId(Integer.parseInt(empId));
			dao.updateEmp(emp);
			response.sendRedirect("empList.html");
		}else if(action.equals("list")) {
			List<Employee> list = dao.getEmpList();
			out.println(JSONArray.fromObject(list));
			
		}else if(action.equals("delete")) {
			String empId = request.getParameter("employee_id");
			dao.deleteEmp(empId);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
