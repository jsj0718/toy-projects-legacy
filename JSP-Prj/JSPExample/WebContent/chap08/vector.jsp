<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%!
	public class Student {
		String name;
		int age;
		String major;
		
		Student(String name, int age, String major) {
			this.name = name;
			this.age = age;
			this.major = major;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Vector Ŭ���� �̿�</title>
</head>
<body>

<div align="center">
	<table>
		<tr align="center">
			<td>�̸�</td>
			<td>����</td>
			<td>��Ư��</td>
		</tr>
<%
	List<Student> array = new Vector<>();

	array.add(new Student("äġ��", 19, "���ŷ"));
	array.add(new Student("����ȣ", 17, "���ٿ��"));
	array.add(new Student("���¿�", 17, "���ھ"));
	array.add(new Student("���븸", 19, "3����"));
	array.add(new Student("���¼�", 18, "�帮��"));
	
	for (Student person : array) {
%>

		<tr>
			<td><%=person.name %></td>
			<td><%=person.age %></td>
			<td><%=person.major %></td>
		</tr>
<% 
	}
%>
</table>
</div>
</body>
</html>