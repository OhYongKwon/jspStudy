<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <%--지시자 page:해당 페이지의 전체적인 속성지정 
    include: 별도의페이지를 현재 페이지에 삽입, taglib: 태그라이브러리의 태그사용 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--이것은 주석입니다. --%>
	<%! //선언자
	public int result; //구구단결과  
	public int i; //증가지수(1 ~ 9)  //
	
	public int sum(int n,int m){ //메소드는 무조건 선언하고 사용
		return n+m;
	}
	%>
	
	<%="========구구단========"%><br/>
	<% for(i=1;i<=9;i++){  //표현식
			result = 2 * i;
			out.print("2 * "+i+" = "+result);%>
			<br/>
	<%		
	}
	 %>
	<%=sum(5,10) %>
</body>
</html>