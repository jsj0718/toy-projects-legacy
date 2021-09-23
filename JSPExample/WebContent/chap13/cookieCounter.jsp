<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카운터 설정하기</title>
</head>
<body>
<%
	// 요청헤더로부터 쿠키 리스트 받기
	Cookie[] cookieArray = request.getCookies();

	// 쿠키 변수와 카운트에 필요한 값 초기화
	Cookie cookie = null;
	int countNum = 0;
	String countStr = null;
	
	// 쿠키 리스트에 객체가 존재하며 원하는 이름의 객체가 존재하는 경우 쿠키값 설정
	if (cookieArray != null) {
		for (int i=0; i<cookieArray.length; i++) {
			if (cookieArray[i].getName().equals("counter1")) {
				cookie = cookieArray[i];
			}
		}
	}
	
	// 쿠키 객체가 존재하는 경우 카운트 값 처리
	if (cookie != null) {
		countNum = Integer.parseInt(cookie.getValue()) + 1;
		countStr = Integer.toString(countNum);
		cookie.setValue(countStr);
	
	// 위에 해당하지 않는 경우 쿠키값 초기화
	} else {
		cookie = new Cookie("counter1", "1");
	}
	
	// 응답헤더를 통해 사용자 컴퓨터에 쿠키 세팅 및 업데이트
	response.addCookie(cookie);
%>

<h2 align="center">당신은 <%=cookie.getValue() %>번째 방문입니다.</h2>
</body>
</html>