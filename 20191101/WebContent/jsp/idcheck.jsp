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
<div align="center">
<%! boolean b =false; %>
<% 
	String id = request.getParameter("cid");
	MemberDao dao = new MemberDao();
	b=dao.idCheck(id);
	if(b){%>
		<h1><%=id %> 는 사용가능한 ID 입니다</h1>
		<script>
			window.opener.document.idChk.value = "Checked";
		</script><%
		 
	}else{ %>
		<h1><%=id %> 는 이미 사용 중인 아이디 입니다(중복)</h1>
		<script>
			window.opener.document.frm.id.value="";
			window.opener.document.frm.id.focus();
		</script>
	<% }
	
%>
	<div>
		<br />
		<button type = "button" onclick="window.close()">확인</button>
	</div>
</div>
</body>
</html>