<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.EmpDao" %>
<%@ page import="dto.Employee" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String empId = request.getParameter("empId");

	EmpDao dao = new EmpDao();
	Employee emp = dao.getEmp(empId);
%>

			<form id="frm" name="frm" action="EmpServ" method="get">
			<input type="hidden" name="action" value="update">
			<input type="hidden" name="employee_id" value="<%=emp.getEmployeeId() %>">
			
				<table border="1">
					<tr>
						<th align="center">firstName : </th>
						<td><input readonly type="text" id=firstName name="firstName" size="20" value="<%=emp.getFirstName()%>"></td>
					</tr>
					<tr>
						<th align="center">lastName : </th>
						<td><input readonly type="text" id="lastName" name="lastName" size="20" value="<%=emp.getLastName()%>"></td>
					</tr>
					<tr>
						<th align="center">email : </th>
						<td><input readonly type="text" id="email" name="email" size="20" value="<%=emp.getEmail() %>"></td>
					</tr>
					<tr>
						<th align="center">hireDate : </th>
						<td><input readonly type="text" id="hireDate" name="hireDate" size="20" value="<%=emp.getHireDate()%>"></td>
					</tr>
					<tr>
						<th align="center">salary : </th>
						<td><input type="text" id="salary" name="salary" size="20" value="<%=emp.getSalary()%>"></td>
					</tr>
					<tr>
						<th align="center">phoneNumber : </th>
						<td><input type="text" id="phoneNumber" name="phoneNumber" size="20" value="<%=emp.getPhoneNumber()%>"></td>
					</tr>
					<tr>
						<th align="center">jobId : </th>
						<td><input type="text" id="jobId" name="jobId" size="20" value="<%=emp.getJobId()%>"></td>
					</tr>
				</table><br/>
				<input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;
				
				<a href = "empList.html"> 리스트 가기</a>
				
			</form>
</body>
</html>