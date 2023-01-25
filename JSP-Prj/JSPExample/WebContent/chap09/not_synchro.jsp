<%!
public class Calculator {
	int i = 1;
	int sum = 0;
	
	public void plus() {
		sum += i;
		i++;
	}
	
	public void minus() {
		i--;
		sum -= i;
	}
}

public class Runner1 implements Runnable {
	Calculator calc;
	
	Runner1 (Calculator calc) {
		this.calc = calc;
	}
	
	@Override
	public void run() {
		calc.plus();
		calc.plus();
		calc.plus();
	}
}

public class Runner2 implements Runnable {
	Calculator calc;
	
	Runner2(Calculator calc) {
		this.calc = calc;
	}
	
	@Override
	public void run() {
		calc.minus();
		calc.minus();
		calc.minus();
	}
}

public class TestThread {
	
	public int go() throws InterruptedException {
		Calculator calc = new Calculator();
			
		Runner1 r1 = new Runner1(calc);
		Runner2 r2 = new Runner2(calc);
		Thread t1 = new Thread(r1);
		Thread t2 = new Thread(r2);
		
		t2.start();
		t1.start();
		
		t1.join();
		t2.join();
		
		return calc.sum;
	}
	
	
}
%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	TestThread t = new TestThread();
%>

°á°ú : <%=t.go() %>
</body>
</html>