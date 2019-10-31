<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("utf-8");%>
</head>

<body>
	<div id ="topmenu"><%@include file="topMenu.jsp" %></div>
	<div><h1>공지사항입력내용</h1></div>
	<div>
	<%
	String name = request.getParameter("name");
	Date wdate = Date.valueOf(request.getParameter("wdate")); 
	String subject=request.getParameter("subject");
	String contents=request.getParameter("contents");
	%>
	
	이름 : <%=name %> <br />
	작성일자 : <%=wdate %> <br />
	제목 : <%=subject %> <br />
	내용 : <%=contents %> <br />
	</div>
	<div>
		<button type="button" onclick="location.href='notice.jsp'">버튼</button>
	</div>
	
	
	<div id ="footer"><%@include file="footer.jsp" %></div>
</body>
</html>