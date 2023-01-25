<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주문 처리 화면</title>
</head>
<body>
<h1>인터넷 프로그래머 서점</h1>
<h2>주문해주셔서 감사합니다.</h2>
<%
	String[] ids = request.getParameterValues("id");
	if (ids != null) {
%>
<%@page import = "java.sql.*"%>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection (
			"jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
	Statement stmt = conn.createStatement();
	String sqlStr;
	int recordUpdated;
	ResultSet rset;
%>

<table>
<tr>
<th>저자</th>
<th>제목</th>
<th>가격</th>
<th>수량</th>
</tr>
<%
	for (int i = 0; i < ids.length; ++i) {
		sqlStr = "UPDATE books SET qty = qty - 1 WHERE id = " + ids[i];
		recordUpdated = stmt.executeUpdate(sqlStr);
		sqlStr = "SELECT * FROM books WHERE id =" + ids[i];
		rset = stmt.executeQuery(sqlStr);
		while (rset.next()) {
	%>
<tr>
<td><%= rset.getString("author") %></td>
<td><%= rset.getString("title") %></td>
<td><%= rset.getInt("price") %></td>
<td><%= rset.getInt("qty") %></td>
</tr>
<%	}
		rset.close();
	}
	stmt.close();
	conn.close();
	}
%>
</table>
<a href = "order.jsp">주문 화면으로 돌아가기</a>
</body>
</html>