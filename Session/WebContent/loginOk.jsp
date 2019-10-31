<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id,pw;
	%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		if(id.equals("abcde") && pw.equals("12345")){
			session.setAttribute("id", id); //세션객체에 id 값 주기
			response.sendRedirect("welcome.jsp");
		}else{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>