<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주석 붙이기</title>
</head>
<body>
<!-- 배열을 선언하고, for문을 이용해서 배열값들의 합계를 구함 -->
	
<%-- 배열을 선언할 때, {}을 이용하면 선언과 값 할당을 동시에 할 수 있다. --%>

<%
	int[] array = { 80, 85, 75, 90, 95, 60, 70, 80, 95, 85};
	int sum = 0;
	int avg;
	
	for (int i=0; i<array.length; i++) // score.length는 배열의 크기를 의미
	{ 
		sum += array[i];
	}
	
	avg = sum / array.length;
%>

<h1>반 평균 구하기</h1>
<h2><%=avg /*평균 출력*/ %>점</h2>
</body>
</html>