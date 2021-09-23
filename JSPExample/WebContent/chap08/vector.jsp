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
<title>Vector 클래스 이용</title>
</head>
<body>

<div align="center">
	<table>
		<tr align="center">
			<td>이름</td>
			<td>나이</td>
			<td>주특기</td>
		</tr>
<%
	List<Student> array = new Vector<>();

	array.add(new Student("채치수", 19, "블로킹"));
	array.add(new Student("강백호", 17, "리바운드"));
	array.add(new Student("서태웅", 17, "스코어러"));
	array.add(new Student("정대만", 19, "3점슛"));
	array.add(new Student("송태섭", 18, "드리블"));
	
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