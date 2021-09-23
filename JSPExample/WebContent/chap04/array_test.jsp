<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>반 평균 구하기</title>
</head>
<body>
<%
	int[] array = { 80, 85, 75, 90, 95, 60, 70, 80, 95, 85};
	int sum = 0;
	int avg;
	
	for (int i=0; i<array.length; i++) {
		sum += array[i];
	}
	
	avg = sum / array.length;
%>

<h1>반 평균 구하기</h1>
<h2><%=avg %>점</h2>
</body>
</html>