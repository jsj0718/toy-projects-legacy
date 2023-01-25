<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
abstract class Tire {
	abstract int getSize();
	String getModel() {
		return "HankookTire";
	}
}

public class HankookTire extends Tire {
	@Override
	int getSize() {
		return 150;
	}
}

public class Car {
	HankookTire wheel = new HankookTire();
	int size = wheel.getSize();
	String model = wheel.getModel();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>추상 클래스 연습하기</title>
</head>
<body>
<%
	Car myCar = new Car();
%>
<h2>바퀴의 크기는 <%=myCar.size %>입니다.</h2>
<h2>바퀴의 모델은 <%=myCar.model %>입니다.</h2>
</body>
</html>