<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>게시글 등록 완료</title>
</head>
<body>
<%
	String name, email, subject, memo, time;
	name = request.getParameter("name");
	email = request.getParameter("email");
	time = request.getParameter("time");
	subject = request.getParameter("subject");
	memo = request.getParameter("memo");
	
	ResultSet rs = null;
	String sql;
	Connection conn = null;
	Statement stmt = null;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		conn = DriverManager.getConnection(url, "system", "1234");
	} catch(Exception e) {
		out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	stmt = conn.createStatement();
	
	sql = "insert into msg "+
			"(subject, name, time, memo, email, id) " +
			"values (" + "'" + subject + "', '" + name + "', '" +
			time + "', '" + memo + "', '" + email + "', msg_seq.nextval)";
	try {
		stmt.executeUpdate(sql);
	} catch(Exception e) {
		out.println("데이터베이스 삽입 연산이 실패했습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
<h3>게시글이 등록되었습니다.</h3>
<a href="list.jsp">게시글 리스트 보기</a>
</body>
</html>