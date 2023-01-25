<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
public class Calculator {
	String title;
	
	public Calculator(String title) {
		this.title = title;
	}
		
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calculator calc = new Calculator("계산식을 만듭니다.");
	
	int a = 100;
	int b = 25;
	
	int num1 = calc.add(a, b);
	int num2 = calc.minus(a, b);
	int num3 = calc.multi(a, b);
	double num4 = calc.divide(a, b);
%>

	<h1><%=calc.title %></h1>
	<h2>두 개의 수 <%=a %>, <%=b %>를 사칙 연산하면</h2><br>
	<h3>더한 값 : <%=num1 %></h3>
	<h3>뺸 값 : <%=num2 %></h3>
	<h3>곱한 값 : <%=num3 %></h3>
	<h3>나눈 값 : <%=num4 %></h3>
</body>
</html>