<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
public static class Calculator {
	// 필드
	static Calculator calc = new Calculator();		// static 선언을 해야 모든 필드, 메소드가 공통적으로 사용 가능하다.
	String title;
	
	// 생성자
	private Calculator() {}							// private으로 객체 생성을 막는다. (싱글톤)
		
	// 메소드
	static Calculator getInstance() {
		return calc;								// 클래스 내 생성한 객체를 리턴한다.
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

calc.title = "계산식 만들기";

int a = 50;
int b = 25;

int num1 = calc.add(a, b);
int num2 = calc.minus(a, b);
int num3 = calc.multi(a, b);
double num4 = calc.divide(a, b);
%>

	<h1><%=calc.title %></h1>
	<h2>두 개의 수 <%=a %>, <%=b %>를 사칙 연산하면</h2>
	
	<p>더한 값 : <%=num1 %></p>
	<p>뺀 값 : <%=num2 %></p>
	<p>곱한 값 : <%=num3 %></p>
	<p>나눈 값 : <%=num4 %></p>
</body>
</html>