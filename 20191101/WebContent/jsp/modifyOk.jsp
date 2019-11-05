<%@page import="ci.micol.dto.MemberDto"%>
<%@page import="ci.micol.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	MemberDto dto = new MemberDto(id,name,"",addr);
	MemberDao dao = new MemberDao();
	int n=dao.update(dto);
	if(n>0){
		%>
		정상적으로 수행됨.
		<%
	}
	else{ %>
		정상적으로 수행 안안됨.
	<% }
%>
	<a href="main.jsp">홈으로</a>
</body>
</html>