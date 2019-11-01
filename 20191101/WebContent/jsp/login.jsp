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
<div align="center">
	<div> <jsp:include page="topMenu.jsp"></jsp:include> </div>
	<div>	<h1>로그인</h1>	</div>
	<div>
		<form id ="frm" name="frm" action="loginOk.jsp" method="post">
			<table border="1">
				<tr>
					<th width="100" align="center"> 아이디</th>
					<td> <input type="text" id="id" name="id" size="50"></td>
				</tr>
				
				<tr>
					<th width="100" align="center"> 비밀번호</th>
					<td> <input type="password" id="pw" name="pw" size="50"></td>
				</tr>
			</table>
			<div>
		<br />
		<button type="submit">로그인</button> &nbsp;&nbsp;
		<button type="reset">취소</button> &nbsp;&nbsp;
		<button type="button" onclick="location.href ='join.jsp'">회원가입</button> &nbsp;&nbsp;
		
	</div>
		</form>
	</div>
	
	
	<div><jsp:include page="footer.jsp"></jsp:include></div>
	
	
</div>
</body>
</html>