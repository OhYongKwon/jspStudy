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
		<div>
			<form id="frm" name="frm" action="EmpServ" method="get">
			<input type="hidden" name="action" value="insert">
				<table border="1">
					<tr>
						<th align="center">firstName : </th>
						<td><input type="text" id=firstName name="firstName" size="20"></td>
					</tr>
					<tr>
						<th align="center">lastName : </th>
						<td><input type="text" id="lastName" name="lastName" size="20"></td>
					</tr>
					<tr>
						<th align="center">email : </th>
						<td><input type="text" id="email" name="email" size="20"></td>
					</tr>
					<tr>
						<th align="center">hireDate : </th>
						<td><input type="date" id="hireDate" name="hireDate" size="20"></td>
					</tr>
					<tr>
						<th align="center">salary : </th>
						<td><input type="text" id="salary" name="salary" size="20"></td>
					</tr>
					<tr>
						<th align="center">phoneNumber : </th>
						<td><input type="text" id="phoneNumber" name="phoneNumber" size="20"></td>
					</tr>
					<tr>
						<th align="center">jobId : </th>
						<td><input type="text" id="jobId" name="jobId" size="20"></td>
					</tr>
				</table><br/>
				<input type="submit" value="삽입"> &nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소"> &nbsp;&nbsp;&nbsp;
				<a href = "empList.html"> 리스트 가기</a>
				
			</form>
		</div>
	</div>
</body>
</html>