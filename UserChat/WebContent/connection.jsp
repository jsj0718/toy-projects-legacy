<%-- context.xml 테스트 파일 --%>
<html>
<head>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.InitialContext, javax.naming.Context" %>
</head>
<body>
<%-- 커넥션 풀에 접근할 수 있도록 만듦 --%>
<%-- InitialContext(lookup) -> Context(lookup) -> Connection(getConnection) -> Statement(createStatement)
-> ResultSet(executeQuery) --%>
<%-- Statement는 sql 문장을 DB에 입력한 다음 결과를 반환시키는 역할 --%>
<%-- 커넥션 풀 장점 : 1. 간편, 안전하게 접근 가능, 2. DB에 접근한 사용자 수를 관리하기 수월해짐 --%>
	<%
		InitialContext initCtx = new InitialContext();
		Context envContext = (Context) initCtx.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/UserChat");
		Connection conn = ds.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT VERSION()");
		while (rs.next()) {
			out.println("MySQL Version : " + rs.getString("version()"));
		}
		rs.close();
		stmt.close();
		conn.close();
		initCtx.close();
	%>
</body>
</html>