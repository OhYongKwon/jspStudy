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
		Object obj1 = session.getAttribute("mySessionName"); //세션에 존재하는 값 가져오기
		String mySessionName = (String)obj1;
		
		Object obj2 = session.getAttribute("myNum");
		int myNum = (int)obj2;
		
	//	int myNum = (int) session.getAttribute("myNum");
		
		out.print(session.getId()+"<br />");
		out.print(mySessionName+"<br />");
		out.print(myNum+"<br />");
		
	%>

</body>
</html>