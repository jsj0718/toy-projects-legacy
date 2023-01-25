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
<title>형변환 연습하기</title>
</head>
<body>
<%
	Person person = new Student("홍길동", 23);
	String major = ((Student)person).getMajor("전산");
%>
<h1>회원 정보</h1>
<p>이름: <%=person.name %>, 나이: <%=person.age %>, 전공: <%=major %></p>
</body>
</html>