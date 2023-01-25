<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HashMap 클래스 이용하기</title>
</head>
<body>
<%
	HashMap<String, String> map = new HashMap<>();
	
	map.put("park77", "박세리");
	map.put("chanTexas", "박찬호");
	map.put("kim12", "김병헌");
	
	// keySet과 entrySet 방법 중 keySet 이용
	for (String key : map.keySet()) {
%>
	<p>아이디가 <%=key %>인 사람은 <%=map.get(key) %>입니다.</p>
<% 
	}
%>
</body>
</html>