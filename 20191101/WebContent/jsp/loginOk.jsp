<%@page import="ci.micol.dao.MemberDao"%>
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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	MemberDao dao = new MemberDao();
	
	String grant = dao.isLoginCheck(id,pw);
	if(grant==null){
	%>
		 <script>
		 	alert("로그인 실패. 다시입력하세요")
		 	document.location="login.jsp";
		 </script>
	<%
	
	
		 }else{
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		session.setAttribute("grant", grant);
		response.sendRedirect("main.jsp");
	}
	%>
</body>
</html>