<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*, javax.servlet.http.*, bean.database.*" %>

<%
	// UTF-8로 request 객체 인코딩
	request.setCharacterEncoding("UTF-8");
	
	String action = request.getParameter("action");
	
	DBConnectionPoolMgr DBManager = null;
	Connection conn = null;	
	
	// DBManager를 통해 Connection 객체 얻기
	try {
		DBManager = DBConnectionPoolMgr.getInstance();
		conn = DBManager.getConnection();
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	
	Statement stmt = null;
	ResultSet result = null;
	Vector<String> isbn = new Vector<>();
	Vector<String> title = new Vector<>();
	Vector<Integer> price = new Vector<>();
	Vector<String> author = new Vector<>();
	Vector<String> publisher = new Vector<>();
	Vector<String> category = new Vector<>();
	Vector<String> description = new Vector<>();
	
	try {
		stmt = conn.createStatement();
		String query = null;
		
		// action이 null이면 모든 리스트 조회
		if (action == null) {
			query = "SELECT * FROM books_info";
		// action이 search이면 검색어를 포함한 결과 조회
		} else if (action.equals("search")) {
			String item = request.getParameter("item");
			String searchString = request.getParameter("search");
			
			query = "SELECT * FROM books_info where " + item + " like '%" + searchString + "%'";
		}
		
		result = stmt.executeQuery(query);
		
		// select 결과를 각 컬럼 리스트에 추가
		while (result.next()) {
			isbn.add(result.getString("isbn"));
			title.add(result.getString("title"));
			price.add(result.getInt("price"));
			author.add(result.getString("author"));
			publisher.add(result.getString("publisher"));
			category.add(result.getString("category"));
			description.add(result.getString("description"));
		}
		
		result.close();
		stmt.close();
		conn.close();
	} catch (SQLException e) {
		out.println(e.getMessage());
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 정보 리스트</title>
<style type="text/css">
	
	body {
		background-repeat : no-repeat;
		background-position : center;
		background-attachment : fixed;
		background-image : url('https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F1849BC364D06A1FA1F');
		background-size : 100% 100%;
		text-align : center;
		font-family : verdana;
		font-size : 15pt;
		font-weight : bold;
	}
	
	input {
		background : ;
		border-width : 1;
		border-color : black;
		height : 20px;
		font-size : 9pt;
		font-family : 굴림;
		color : black;
	}
	
	td {
		font-family : verdana;
		font-size : 10pt;
		font-weight : 900;
		text-align : center;
		width : 117 px;
		height : 30px;
	}
</style>

<script type="text/javascript">
	function bookSearch() {
		if (document.form1.search.value.length == 0) {
			alert("검색어를 입력하세요.");
			return false;
		}
		document.form1.submit();
	}
</script>
</head>
<body bgcolor="#FFE6FD" text=black>
<br><br>

<div align="center">
<p> Books Information List </p>
	
	<table border="1">
		<tr>
			<td> ISBN </td>
			<td> TITLE </td>
			<td> PRICE </td>
			<td> AUTHOR </td>
			<td> PUBLISHER </td>
			<td> CATEGORY </td>
			<td> DESCRIPTION </td>
		</tr>
		
		<%
			for (int i=0; i<isbn.size(); i++) {
		%>
		<tr>
			<td> <%=isbn.get(i) %> </td>
			<td> <%=title.get(i) %> </td>
			<td> <%=price.get(i) %> </td>
			<td> <%=author.get(i) %> </td>
			<td> <%=publisher.get(i) %> </td>
			<td> <%=category.get(i) %> </td>
			<td> <%=description.get(i) %> </td>
		</tr>
		<% 				
			}
		%>
	</table>
	<br>
	
	<%-- URL에서 Parameter 얻어오는 방법 : info_list.jsp?action=search 와 같이 ? 뒤에 파라미터를 넣으면 된다. --%>
	<form name="form1" action="info_list.jsp?action=search" method="post">
		<select name="item" size="1">
			<option value="isbn">ISBN</option>
			<option value="title">TITLE</option>
			<option value="author">AUTHOR</option>
			<option value="publisher">PUBLISHER</option>
		</select>
		
		<input type="text" name="search" maxlength="30" size="40">
		<input type="button" value="검색" onclick="bookSearch()">
		<input type="button" value="리스트" onclick="location.href='info_list.jsp'">
		<input type="button" value="등록" onclick="location.href='information.jsp'">
	</form>	
</div>
</body>
</html>