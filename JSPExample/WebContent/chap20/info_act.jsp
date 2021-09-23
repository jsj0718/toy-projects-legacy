<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*, javax.servlet.http.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%                
	request.setCharacterEncoding("UTF-8");	
	
	String isbn = request.getParameter("isbn");                                  
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	String price = request.getParameter("price");
	String category = request.getParameter("category");
	String description = request.getParameter("description");
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		out.println(e.getMessage());
	}
	
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "scott";
	String password = "tiger";
	
	Connection conn = DriverManager.getConnection(url, user, password);
	
	try {
		Statement stmt = conn.createStatement();
		
		String query = "INSERT INTO books_info (isbn, title, price, author, publisher,category, description) "
					+ "VALUES ('" + isbn + "', '" + title + "', '" + price + "', '" + author + "', '" + publisher + "', '" + category + "', '" + description + "')";
		
		stmt.executeUpdate(query);
		
		stmt.close();
		conn.close();
		
	} catch (SQLException e) {
		out.println(e.getMessage());
	}
%>


<script type="text/javascript">
	alert("데이터 삽입 성공")
	location.href = "information.jsp";
	// href는 location 객체의 속성으로 현재 접속 중인 페이지 정보를 가지고 있다. (값을 변경할 수 있어서 다른 페이지로 이동하는데 사용한다.)
	// information.jsp로 이동한다는 의미이다.
</script>


</head>
<body>

</body>
</html>