<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("UTF-8"); %>
</head>
<body>
<div align = "center">
	<div>
		<h3>개인정보</h3>
		
	</div>
	<div>
		<table>
			<tr>
				<th align="center" width="100">이름</th>
				<td width="250"> <%=request.getParameter("name") %> </td>
			</tr>
			<tr>
				<th align="center" width="100">나이</th>
				<td width="250"> <%=request.getParameter("age") %> </td>
			</tr>
			<tr>
				<th align="center" width="100">이름</th>
				<% String hobbys[]=request.getParameterValues("hobbys"); %>
				<td width="250"><%=Arrays.toString(hobbys) %>  </td>
			</tr>
			<tr>
				<th align="center" width="100">지역</th>
				<td width="250"> <%=request.getParameter("city") %> </td>
			</tr>
		</table>
	</div>
</div>
<div id = "footer"><%@ include file="footer.jsp" %></div>
</body>
</html>