<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>게시글 표시</title>
</head>
<body>
<%
	String subject="", memo="", name="", time="", email="";
	int id = Integer.parseInt(request.getParameter("id"));
	
	Connection conn = null;
	Statement stmt = null;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		conn = DriverManager.getConnection(url, "system", "1234");
	} catch(Exception e) {
		out.println("데이터베이스 접속에 문제가 있습니다.");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	stmt = conn.createStatement();
	String sql = "select * from msg where id = " + id;
	ResultSet rs = stmt.executeQuery(sql);
	
	while (rs.next()) {
		subject = rs.getString("subject");
		memo = rs.getString("memo");
		name = rs.getString("name");
		time = rs. getString("time");
		email = rs.getString("email");
	}
%>
<table border="2">
	<tr>
		<td>제목</td>
		<td><%= subject %></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%= name %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%= memo %></td>
	</tr>
	<tr>
		<td>시간</td>
		<td><%= time %></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%= email %></td>
	</tr>
</table>
<br>
<br>
<a href="list.jsp">게시글 리스트 보기</a>
</body>
</html>