<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("mySessionName", "OhYong Kwon"); //세션에 값넣기
		session.setAttribute("myNum", 12345);
	%>
	<a href="sessionget.jsp">세션값 확인하기</a>
</body>
</html>