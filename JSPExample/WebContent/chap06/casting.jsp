<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
public class Person {
	String name;
	int age;
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
}

public class Student extends Person {
	String major;
	
	public Student(String name, int age) {
		super(name, age);
	}
	
	public String getMajor(String major) {
		this.major = major;
		return major;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����ȯ �����ϱ�</title>
</head>
<body>
<%
	Person person = new Student("ȫ�浿", 23);
	String major = ((Student)person).getMajor("����");
%>
<h1>ȸ�� ����</h1>
<p>�̸�: <%=person.name %>, ����: <%=person.age %>, ����: <%=major %></p>
</body>
</html>