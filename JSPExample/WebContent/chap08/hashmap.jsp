<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HashMap Ŭ���� �̿��ϱ�</title>
</head>
<body>
<%
	HashMap<String, String> map = new HashMap<>();
	
	map.put("park77", "�ڼ���");
	map.put("chanTexas", "����ȣ");
	map.put("kim12", "�躴��");
	
	// keySet�� entrySet ��� �� keySet �̿�
	for (String key : map.keySet()) {
%>
	<p>���̵� <%=key %>�� ����� <%=map.get(key) %>�Դϴ�.</p>
<% 
	}
%>
</body>
</html>