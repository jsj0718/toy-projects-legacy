<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String value = request.getParameter("text");
	StringTokenizer st = new StringTokenizer(value, "\n");
	
	String str = "";
	while (st.hasMoreTokens()) {
		str += st.nextToken() + "<br>";
	}
%>

	<div align="center">
		<h1>하고 싶은 말</h1>
		<table>
			<tr>
				<td bgcolor="white" align="center">
					<%=str %>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>