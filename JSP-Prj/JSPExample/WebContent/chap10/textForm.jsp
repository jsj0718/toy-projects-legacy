<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>당신의 정보는?</title>
</head>
<body>
<%
	Enumeration<?> e = request.getParameterNames();
	
	while (e.hasMoreElements()) {
		String name = (String) e.nextElement();
		if (name.equals("my_id")) {
			String id = request.getParameter(name);
%>
			<p>ID : <%=id %></p>
			
<%
		} else if (name.equals("my_pw")) {
			String pw = request.getParameter(name);
%>
			<p>PW : <%=pw %></p>
<%
		} else if (name.equals("my_name")) {
			String myname = request.getParameter(name);
%>
			<p>이름 : <%=myname %></p>
<%
		} else if (name.equals("my_hobby")) {
			String[] values = request.getParameterValues(name);			
			for (String value : values) {
%>
			<p>저의 취미는 <%=value %>입니다.</p>
<%		
			}
		} else if (name.equals("mail")) {
			String mail = request.getParameter(name);
%>
			<p>메일 수신 여부는 <%=mail %>입니다.</p>
<%
		}
	}
%>
</body>
</html>