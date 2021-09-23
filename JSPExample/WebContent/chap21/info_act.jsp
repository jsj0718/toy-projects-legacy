<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*, javax.servlet.http.*, bean.database.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String isbn = request.getParameter("isbn");
	String title = request.getParameter("title");
	String price = request.getParameter("price");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	String category = request.getParameter("category");
	String description = request.getParameter("description");
	
	try {
		DBConnectionPoolMgr	DBManager = DBConnectionPoolMgr.getInstance();
		Connection conn = DBManager.getConnection();
		String query = "INSERT INTO books_info(isbn, title, price, author, publisher, category, description) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		// 간결한 Query 작성을 위해 PreparedStatement 클래스 이용
		PreparedStatement pstmt = conn.prepareStatement(query);
		
		// 인덱스, 데이터 삽입
		pstmt.setString(1, isbn);
		pstmt.setString(2, title);
		pstmt.setString(3, price);
		pstmt.setString(4, author);
		pstmt.setString(5, publisher);
		pstmt.setString(6, category);
		pstmt.setString(7, description);
		
		// Query Update 진행
		pstmt.executeUpdate();
		
		// pstmt 종료 및 conn 객체 반납 (connStack 리스트에 추가)
		pstmt.close();
		DBManager.returnConnection(conn);
		
	} catch (SQLException e) {
		out.println(e.getMessage());
	}
%>

<script type="text/javascript">
	alert("데이터 삽입 성공!!");
	location.href = "information.jsp";
</script>
