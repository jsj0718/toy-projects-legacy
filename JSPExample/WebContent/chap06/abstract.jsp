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
<title>�߻� Ŭ���� �����ϱ�</title>
</head>
<body>
<%
	Car myCar = new Car();
%>
<h2>������ ũ��� <%=myCar.size %>�Դϴ�.</h2>
<h2>������ ���� <%=myCar.model %>�Դϴ�.</h2>
</body>
</html>