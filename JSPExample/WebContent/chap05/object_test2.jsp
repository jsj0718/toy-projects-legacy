<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public static class Calculator {
	static String title;
	
	static int add(int a, int b) {
		return a + b;
	}
	
	static int minus(int a, int b) {
		return a - b;
	}
	
	static int multi(int a, int b) {
		return a * b;
	}
	
	static double divide(double a, double b) {
		return a / b;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체 생성하기</title>
</head>
<body>
<%
	Calculator.title = "계산식 만들기";
	
	int a = 15;
	int b = 30;
	
	int num1 = Calculator.add(a, b);
	int num2 = Calculator.minus(a, b);
	int num3 = Calculator.multi(a, b);
	double num4 = Calculator.divide(a, b);
%>

	<h1><%=Calculator.title %></h1>
	<h2>두 개의 수 <%=a %>, <%=b %>를 사칙 연산하면</h2><br>
	<h3>더한 값 : <%=num1 %></h3>
	<h3>뺸 값 : <%=num2 %></h3>
	<h3>곱한 값 : <%=num3 %></h3>
	<h3>나눈 값 : <%=num4 %></h3>
</body>
</html>