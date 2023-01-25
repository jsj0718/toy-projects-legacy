<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="javax.servlet.http.*, bean.member.*" %>
<%
	String id = request.getParameter("id");
	MemberManager memberManager = MemberManager.getInstance();
	boolean check = memberManager.idCheck(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<script>
	function closeWindow() {
		document.form1.id.value = opener.document.form1.id.value;
		self.close();
	}
</script>
</head>
<body>
	<div align="center">
		<p><img src=""></p>
		
		<form name="form1" action="idcheck.jsp" method="post">
			<table>
				<tr>
					<td>
						<%if (!check) {%>
							<%=id %>는 사용 가능한 아이디입니다.
						<%} else { %>
							<%=id %>는 사용 이미 사용 중인 아이디입니다.
						<%} %>
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" name="close" value="확인" onclick="closeWindow()">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>