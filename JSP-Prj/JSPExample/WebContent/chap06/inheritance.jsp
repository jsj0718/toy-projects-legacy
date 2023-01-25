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
	
	public Student(String name, int age, String major) {
		super(name, age);
		this.major = major;
	}
	
}
public class Worker extends Person {
	String job;
	
	public Worker(String name, int age, String job) {
		super(name, age);
		this.job = job;
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상속 연습하기</title>
</head>
<body>
<%
	Student student = new Student("홍길동", 23, "전산");
	Worker worker = new Worker("이몽룡", 27, "회사원");
%>
<h2>회원 정보</h2>
<p>이름: <%=student.name %>, 나이: <%=student.age %>, 전공: <%=student.major %></p>
<p>이름: <%=worker.name %>, 나이: <%=worker.age %>, 직업: <%=worker.job %></p>
</body>
</html>