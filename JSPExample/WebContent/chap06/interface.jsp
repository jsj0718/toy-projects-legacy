<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
interface Wheel {
	public int getSize();
	public String getModel();
}

public class HankookTire implements Wheel {
	@Override
	public int getSize() {
		return 100;
	}
	
	@Override
	public String getModel() {
		return "한국 타이어";
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
<title>Insert title here</title>
</head>
<body>
<%
	Car myCar = new Car();
%>

<h2>바퀴의 크기는 <%=myCar.size %>입니다.</h2>
<h2>바퀴의 모델은 <%=myCar.model %>입니다.</h2>
</body>
</html>