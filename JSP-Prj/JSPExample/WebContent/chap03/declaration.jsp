<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String str = "두 개의 숫자 더하기";
int num1 = 100;
double num2 = 100.9;

double addNum(int num1, double num2) {
	double c = num1 + num2;
	return c;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration</title>
</head>
<body>
	<h1><%=str %></h1>
	<h1> 첫 번째 숫자: <%=num1 %></h1>
	<h1> 두 번째 숫자: <%=num2 %></h1>
	<%
		double c = addNum(num1, num2);
	%>
	<h1> 두 개를 더한 값은? <%=c %></h1>
</body>
</html>