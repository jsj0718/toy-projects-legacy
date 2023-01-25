<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "mybean.customer.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<div align="center">
		<form action="customerApp.jsp" method="post">
			<h3>고객 정보 입력하기</h3>
			이름 <input type="text" name="cust_name"><br>
			나이 <input type="text" name="cust_age"><br><br>
			<input type="submit" value="등록">		
		</form>
		<hr>
		
		<jsp:useBean id="vec" class="mybean.customer.VectorAppBean" scope="application"/>
		<jsp:setProperty name="vec" property="name" param="cust_name"/>
		<jsp:setProperty name="vec" property="age" param="cust_age"/>
		
		<form action="customerApp.jsp" method="post">
			<h3>고객 정보 삭제하기</h3>
			번호 <input type="text" name="cust_index"><br><br>
			<input type="submit" value="삭제">		
		</form>
		<hr>
		
		<%-- property="delete"인 이유 찾아보기 --%>
		<jsp:setProperty name="vec" property="delete" param="cust_index"/>
		
		<h3>고객 정보 출력하기</h3>
			<table border="1">
				<tr><td>번호</td><td>이름</td><td>나이</td></tr>
				<%
					CustomerAppBean[] c = vec.getCustomer();
					for (int i=0; i<c.length; i++) {
				%>
						<tr>
							<td><%=(i+1) %></td>
							<td><%=c[i].getName() %></td>
							<td><%=c[i].getAge() %></td>
						</tr>
				<%
					}
				%>
			</table>
	</div>
</body>
</html>