<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
public class Calculator {
	double divide(int num1, int num2) {
		return num1 / num2;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예외 처리 연습하기</title>
</head>
<body>
<%
	Calculator calc = new Calculator();
	int a = 10;
	int b = 10;
 	double number = 0.0;
	
	try {
		number = calc.divide(a, b);
%>		
		<h2><%=a %>, <%=b %>를 나눈 값의 결과: <%=number %></h2>
<%
	} catch (ArithmeticException e) {
%>
		<h2>"0으로 나눌 수 없습니다"</h2>
<%
	}
%>

</body>
</html>