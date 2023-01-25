<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Calendar 클래스 이용</title>
</head>
<body>
<%
	// Calendar는 싱글톤으로 getInstance()를 통해 객체를 얻는다.
	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH) + 1;
	int date = today.get(Calendar.DATE);
	int dayInt = today.get(Calendar.DAY_OF_WEEK);
	
	// Date 객체보다 Calender 객체를 더 많이 사용 (Date는 싱글톤 X)
	int hour = today.get(Calendar.HOUR);
	int minute = today.get(Calendar.MINUTE);
	int second = today.get(Calendar.SECOND);
	int ampmInt = today.get(Calendar.AM_PM);
	
	String day = "";
	switch (dayInt) {
		case 1: day = "일"; break;
		case 2: day = "월"; break;
		case 3: day = "화"; break;
		case 4: day = "수"; break;
		case 5: day = "목"; break;
		case 6: day = "금"; break;
		case 7: day = "토"; break;
	}
	
	String ampm = "";
	switch (ampmInt) {
		case 0: ampm = "오전"; break;
		case 1: ampm = "오후"; break;
	}
%>

<p>오늘은 <%=year %>년 <%=month %>월 <%=date %>일 <%=day %>요일 입니다.</p>
<p>현재 시각은 <%=ampm %> <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</p>
</body>
</html>