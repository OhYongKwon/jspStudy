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
<div align = "center">
	<div><h1> 게시판 목록</h1></div>
	<div>
		<table border="1">
			<tr>
				<th align = "center" width="20">순번</th>
				<th align = "center" width="70">작성자</th>
				<th align = "center" width="200">제 목</th>
				<th align = "center" width="100">작성일자</th>
				<th align = "center" width="50">조회수</th>
			</tr>
			<c:forEach var ="dto" items="${list}">
			<tr>
				<td align="center">${dto.id} </td>
				<td align="center">${dto.name}</td>
				<td align="center">${dto.title}</td>
				<td align="center">${dto.wDate}</td>
				<td align="center">${dto.hit}</td>
			</tr>
			</c:forEach>
			
		</table>
	</div>
	
</div>
<div>
	<button type="button" onclick="location.href='borderWrite.do'">글쓰기</button>
</div>

</body>
</html>