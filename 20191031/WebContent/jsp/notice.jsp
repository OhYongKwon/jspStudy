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
	<div id="topmenu"><%@ include file="topMenu.jsp" %></div>
	<div>
		<h1>공 지 사 항</h1>
	</div>
	<div>
		<table border="1">
			<tr>
				<th align="center" width="70">순번</th>
				<th align="center" width="300">제목</th>
				<th align="center" width="150">작성자</th>
				<th align="center" width="150">작성일자</th>
				<th align="center" width="70">조회수</th>
			</tr>
			<!-- 내용이 반복되는 부분 시작 -->
			<tr onclick="location.href='view.jsp'">
				<td align="center" width="70">1</td>
				<td align="center" width="300">&nbsp;&nbsp;&nbsp;가을이 왔네요...</td>
				<td align="center" width="150">홍길동</td>
				<td align="center" width="150">2019-10-31</td>
				<td align="center" width="70">1</td>
			</tr>
			<!--  -->
			<tr>
				<td align="center" width="70">2</td>
				<td align="center" width="300">&nbsp;&nbsp;&nbsp;오늘은 휴가 입니다...</td>
				<td align="center" width="150">홍길동</td>
				<td align="center" width="150">2019-10-31</td>
				<td align="center" width="70">1</td>
			</tr>
			<tr>
				<td align="center" width="70">1</td>
				<td align="center" width="300">&nbsp;&nbsp;&nbsp;회사 휴무일 공지</td>
				<td align="center" width="150">홍길동</td>
				<td align="center" width="150">2019-10-31</td>
				<td align="center" width="70">1</td>
			</tr>
			<!-- 레코드 끝 -->
		</table>
	</div>
		<br />
		<button type="button" onclick="location.href='n_write.jsp'">글쓰기</button>
		
	<div id="footer"><%@ include file="footer.jsp" %></div>
</div>
</body>
</html>