<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="customer" class="mybean.customer.CustomerBean"/>
<jsp:setProperty property="name" value="정대만" name="customer"/>
<jsp:setProperty property="age" value="19" name="customer"/>

<h2 align="center">고객의 이름은 <jsp:getProperty property="name" name="customer"/>이고, <jsp:getProperty property="age" name="customer"/>살 입니다.</h2>
</body>
</html>