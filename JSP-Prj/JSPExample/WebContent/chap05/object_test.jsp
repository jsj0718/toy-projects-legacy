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
<title>��ü �����ϱ�</title>
</head>
<body>
<%
Calculator calc = new Calculator();

calc.title = "���� ������";

int a = 20;
int b = 40;

int num1 = calc.add(a, b);
int num2 = calc.minus(a, b);
int num3 = calc.multi(a, b);
double num4 = calc.divide(a, b);
%>

<h1><%=calc.title %></h1>
<h2>�� ���� �� <%=a %>, <%=b %>�� ��Ģ�����ϸ�</h2>
<h2>���� �� : <%=num1 %></h2>
<h2>�� �� : <%=num2 %></h2>
<h2>���� �� : <%=num3 %></h2>
<h2>���� �� : <%=num4 %></h2>
</body>
</html>