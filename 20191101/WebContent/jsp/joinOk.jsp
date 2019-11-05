<%@page import="ci.micol.dto.MemberDto"%>
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
<%! int n; %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	MemberDto dto = new MemberDto(id,name,pw,addr);
	MemberDao dao = new MemberDao();
	
	n = dao.insert(dto);

%>
<%
	if(n !=0){
		out.print("회원가입이 성공했습니다.");
	}else{
		out.print("회원가입이 실패했습니다.");		
	}
%>
</body>
</html>