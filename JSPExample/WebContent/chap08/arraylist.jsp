<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ArrayList Ŭ���� �̿�</title>
</head>
<body>
<%
	List<String> nameArray = new ArrayList<>();
	List<Integer> ageArray = new ArrayList<>();

	nameArray.add("äġ��");
	nameArray.add("����ȣ");
	nameArray.add("���¿�");
	
	ageArray.add(19);
	ageArray.add(17);
	ageArray.add(17);
%>
	<div align="center">
		<table>
			<tr align="center">
				<td>�̸�</td>
				<td>����</td>
			</tr>			

	
<%
	for (int i=0; i<nameArray.size(); i++) {
%>	
			<tr align="center">
				<td><%=nameArray.get(i) %></td>
				<td><%=ageArray.get(i) %></td>
			</tr>
<%
	}
%>	
		</table>	
	</div>
</body>
</html>