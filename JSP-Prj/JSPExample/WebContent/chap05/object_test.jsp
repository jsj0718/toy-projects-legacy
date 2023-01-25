<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
public class Calculator {
	String title;
	
	int add(int a, int b) {
		return a + b;
	}
	
	int minus(int a, int b) {
		return a - b;
	}
	
	int multi(int a, int b) {
		return a * b;
	}
	
	double divide(double a, double b) {
		return a / b;
	}
		
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>객체 생성하기</title>
</head>
<body>
<%
Calculator calc = new Calculator();

calc.title = "계산식 만들어보자";

int a = 20;
int b = 40;

int num1 = calc.add(a, b);
int num2 = calc.minus(a, b);
int num3 = calc.multi(a, b);
double num4 = calc.divide(a, b);
%>

<h1><%=calc.title %></h1>
<h2>두 개의 수 <%=a %>, <%=b %>을 사칙연산하면</h2>
<h2>더한 값 : <%=num1 %></h2>
<h2>뺀 값 : <%=num2 %></h2>
<h2>곱한 값 : <%=num3 %></h2>
<h2>나눈 값 : <%=num4 %></h2>
</body>
</html>