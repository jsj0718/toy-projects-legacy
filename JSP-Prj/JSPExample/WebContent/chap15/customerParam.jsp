<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CustomerBean 클래스 사용하기</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="customer" class="mybean.customer.CustomerBean"/>
<jsp:setProperty property="name" name="customer" param="cust_name"/>
<jsp:setProperty property="age" name="customer" param="cust_age"/>

<h2 align="center">고객의 이름은 <jsp:getProperty property="name" name="customer"/>이고, 나이는 <jsp:getProperty property="age" name="customer"/>살 입니다.</h2>
</body>
</html>