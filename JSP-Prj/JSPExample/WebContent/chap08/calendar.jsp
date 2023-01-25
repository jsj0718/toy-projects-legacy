<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Calendar Ŭ���� �̿�</title>
</head>
<body>
<%
	// Calendar�� �̱������� getInstance()�� ���� ��ü�� ��´�.
	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH) + 1;
	int date = today.get(Calendar.DATE);
	int dayInt = today.get(Calendar.DAY_OF_WEEK);
	
	// Date ��ü���� Calender ��ü�� �� ���� ��� (Date�� �̱��� X)
	int hour = today.get(Calendar.HOUR);
	int minute = today.get(Calendar.MINUTE);
	int second = today.get(Calendar.SECOND);
	int ampmInt = today.get(Calendar.AM_PM);
	
	String day = "";
	switch (dayInt) {
		case 1: day = "��"; break;
		case 2: day = "��"; break;
		case 3: day = "ȭ"; break;
		case 4: day = "��"; break;
		case 5: day = "��"; break;
		case 6: day = "��"; break;
		case 7: day = "��"; break;
	}
	
	String ampm = "";
	switch (ampmInt) {
		case 0: ampm = "����"; break;
		case 1: ampm = "����"; break;
	}
%>

<p>������ <%=year %>�� <%=month %>�� <%=date %>�� <%=day %>���� �Դϴ�.</p>
<p>���� �ð��� <%=ampm %> <%=hour %>�� <%=minute %>�� <%=second %>�� �Դϴ�.</p>
</body>
</html>