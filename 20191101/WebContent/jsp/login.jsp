<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type ="text/javascript">
	function formCheck(){
	if(frm.id.value ==""){
		alert("아이디를 입력하세요.");
		form.id.focus();
		return false;
		}
	if(frm.pw.value==""){
		alert("패스워드를 입력하세요.");
		form.pw.focus();
		return false;
		}

		return true;
	}
</script>
</head>
<body>
	
<div align="center">
	<c:if test ="${id == null}">
	<div>	<h1>로그인</h1>	</div>
	<div>
		<form id ="frm" name="frm" action="loginOk.jsp" method="post" onsubmit="return formCheck();">
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
		<button type="submit" >로그인</button> &nbsp;&nbsp;
		<button type="reset">취소</button> &nbsp;&nbsp;
		<button type="button" onclick="location.href ='join.jsp'">회원가입</button> &nbsp;&nbsp;
		
	</div>
		</form>
	</div>
	</c:if>
		<c:if test ="${id != null}">
			<h1> ${id}는 이미 로그인 하였습니다.</h1>
			<a href="main.jsp">홈으로 가기</a>
		</c:if>
		
	<div><jsp:include page="footer.jsp"></jsp:include></div>
</div>
</body>
</html>