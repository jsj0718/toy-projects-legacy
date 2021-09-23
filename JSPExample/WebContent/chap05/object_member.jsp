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
<title>��ü �����ϱ�</title>
</head>
<body>
<%
	Member member1 = new Member();
	member1.setName("������");
	member1.setAge(28);
	
	Member member2 = new Member();
	member2.setName("�躴��");
	member2.setAge(24);
%>
	<h1>ȸ�� ���</h1>
	
	<h2>[ù ��° ȸ��] �̸� : <%=member1.getName() %>, ����: <%=member1.getAge() %></h2>
	<h2>[�� ��° ȸ��] �̸� : <%=member2.getName() %>, ����: <%=member2.getAge() %></h2>
</body>
</html>