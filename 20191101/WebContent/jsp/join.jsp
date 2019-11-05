<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type ="text/javascript">

	function formCheck(){
	if(frm.id.value ==""){
		alert("아이디를 입력하세요.");
		frm.id.focus();
		return false;
		}
	if(frm.idChk.value="unCheck"){
		alert("아이디 중복체크를 하세요.");
		return false;
	}
	if(frm.pw.value==""){
		alert("패스워드를 입력하세요.");
		frm.pw.focus();
		return false;
		}
	if(frm.name.value==""){
		alert("이름을 입력하세요.");
		frm.pw.focus();
		return false;
		}
		frm.submit();
	}
	
	function idCheck(){
		window.open("idcheck.jsp?cid="+id.value,"IdCheck","width-800,height-700");
		
	}
</script>

</head>
<body>

<div align="center">
	<div><h1>회원가입</h1></div>
	<div>
		<form id="frm" name="frm" action="joinOk.jsp" method="post">
			<div>
				<table border="1">
					<tr>
						<th align="center" width="100">*아 이 디</th>
						<td><input type="text" name="id" id="id" size="30">
							<button type="button" name="idChk" onclick="idCheck();" value="unCheck">중복체크</button>
						</td>
					</tr>
					<tr>
						<th align="center" width="100">*패스워드</th>
						<td><input type="password" name="pw" id="pw" size="30">
					</tr>
					<tr>
						<th align="center" width="100">*이&nbsp;&nbsp;&nbsp;름</th>
						<td><input type="text" name="name" id="name" size="50">
					</tr>
					<tr>
						<th align="center" width="100">주&nbsp;&nbsp;&nbsp;소</th>
						<td><input type="text" name="addr" id="addr" size="70">
					</tr>
	
				</table>	
			</div>
			<div>
				<br />
				<button type="button" onclick="formCheck();" >회원가입</button>&nbsp;&nbsp;
				<button type="reset">취소</button>&nbsp;&nbsp;
				<button type="button" onclick="location.href='login.jsp'">로그인</button>
			</div>
		</form>
	</div>
</div>
<div><jsp:include page="footer.jsp"></jsp:include></div>
</body>
</html>