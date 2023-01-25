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
<title>��� �����ϱ�</title>
</head>
<body>
<%
	Student student = new Student("ȫ�浿", 23, "����");
	Worker worker = new Worker("�̸���", 27, "ȸ���");
%>
<h2>ȸ�� ����</h2>
<p>�̸�: <%=student.name %>, ����: <%=student.age %>, ����: <%=student.major %></p>
<p>�̸�: <%=worker.name %>, ����: <%=worker.age %>, ����: <%=worker.job %></p>
</body>
</html>