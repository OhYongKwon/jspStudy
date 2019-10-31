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
			Cookie cookie = new Cookie("id",id); //쿠키생성
			cookie.setMaxAge(60); //60초 유지
			response.addCookie(cookie); //쿠키를 담아 내려보넨다.
			
			Cookie cookie1 = new Cookie("pw",pw);
			response.addCookie(cookie1); //쿠키를 담아 내려보넨다.

			response.sendRedirect("welcome.jsp");
		}else{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>