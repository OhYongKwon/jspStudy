<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		Connection conn;   //DBMS와 연결을 유지
		PreparedStatement psmt;
		ResultSet rs;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "micol";
		String password= "micol";
	
	%>
	
	<%
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
		}catch (ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
	
	String sql="select * from student";
	try{
		psmt=conn.prepareStatement(sql);
		
		rs = psmt.executeQuery();
		while(rs.next()){
			String id = rs.getString("studentid");
			String name = rs.getString("studentname");
			String addr = rs.getString("studentaddr");
			String tel = rs.getString("studenttel");
			int age = rs.getInt("studentage");
			out.print(id + ": ");
			out.print(name + ": ");
			out.print(addr + ": ");
			out.print(tel + ": ");
			out.print(age + "<br />");
			
			
		}
	}catch (SQLException e){
		e.printStackTrace();
	}finally{
		rs.close();
		psmt.close();
		conn.close();
	}
	%>
</body>
</html>