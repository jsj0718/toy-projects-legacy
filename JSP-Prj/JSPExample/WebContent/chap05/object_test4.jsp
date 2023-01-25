<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
public static class Calculator {
	// �ʵ�
	static Calculator calc = new Calculator();		// static ������ �ؾ� ��� �ʵ�, �޼ҵ尡 ���������� ��� �����ϴ�.
	String title;
	
	// ������
	private Calculator() {}							// private���� ��ü ������ ���´�. (�̱���)
		
	// �޼ҵ�
	static Calculator getInstance() {
		return calc;								// Ŭ���� �� ������ ��ü�� �����Ѵ�.
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
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Calculator calc = Calculator.getInstance();

calc.title = "���� �����";

int a = 50;
int b = 25;

int num1 = calc.add(a, b);
int num2 = calc.minus(a, b);
int num3 = calc.multi(a, b);
double num4 = calc.divide(a, b);
%>

	<h1><%=calc.title %></h1>
	<h2>�� ���� �� <%=a %>, <%=b %>�� ��Ģ �����ϸ�</h2>
	
	<p>���� �� : <%=num1 %></p>
	<p>�� �� : <%=num2 %></p>
	<p>���� �� : <%=num3 %></p>
	<p>���� �� : <%=num4 %></p>
</body>
</html>