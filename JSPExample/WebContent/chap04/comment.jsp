<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ּ� ���̱�</title>
</head>
<body>
<!-- �迭�� �����ϰ�, for���� �̿��ؼ� �迭������ �հ踦 ���� -->
	
<%-- �迭�� ������ ��, {}�� �̿��ϸ� ����� �� �Ҵ��� ���ÿ� �� �� �ִ�. --%>

<%
	int[] array = { 80, 85, 75, 90, 95, 60, 70, 80, 95, 85};
	int sum = 0;
	int avg;
	
	for (int i=0; i<array.length; i++) // score.length�� �迭�� ũ�⸦ �ǹ�
	{ 
		sum += array[i];
	}
	
	avg = sum / array.length;
%>

<h1>�� ��� ���ϱ�</h1>
<h2><%=avg /*��� ���*/ %>��</h2>
</body>
</html>