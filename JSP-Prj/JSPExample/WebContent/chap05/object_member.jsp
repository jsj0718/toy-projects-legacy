<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
public class Member {
	private String name;
	private int age;
	
	public void setName(String name) {
		if (name != null) {
			this.name = name;
		}
	}
	
	public void setAge(int age) {
		if (age > 0) {
			this.age = age;
		}
	}
	
	public String getName() {
		return name;
	}
	
	public int getAge() {
		return age;
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>객체 생성하기</title>
</head>
<body>
<%
	Member member1 = new Member();
	member1.setName("박찬후");
	member1.setAge(28);
	
	Member member2 = new Member();
	member2.setName("김병헌");
	member2.setAge(24);
%>
	<h1>회원 명단</h1>
	
	<h2>[첫 번째 회원] 이름 : <%=member1.getName() %>, 나이: <%=member1.getAge() %></h2>
	<h2>[두 번째 회원] 이름 : <%=member2.getName() %>, 나이: <%=member2.getAge() %></h2>
</body>
</html>