<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>편지 보내기</title>
<script>
	function checkButton() {
		//input file 태그.
		var file = document.getElementById('fileInput');
		//파일 경로.
		var filePath = file.value;
		//전체경로를 \ 나눔.
		var filePathSplit = filePath.split('\\'); 
		//전체경로를 \로 나눈 길이.
		var filePathLength = filePathSplit.length;
		//마지막 경로를 .으로 나눔.
		var fileNameSplit = filePathSplit[filePathLength-1].split('.');
		//파일명 : .으로 나눈 앞부분
		var fileName = fileNameSplit[0];
		//파일 확장자 : .으로 나눈 뒷부분
		var fileExt = fileNameSplit[1];
		//파일 크기
		var fileSize = file.files[0].size;
		
		console.log('파일 경로 : ' + filePath);
		console.log('파일명 : ' + fileName);
		console.log('파일 확장자 : ' + fileExt);
		console.log('파일 크기 : ' + fileSize);
		
		alert(filePath);	
	}
</script>
</head>
<body bgcolor="#FFEFA2" text="#804000">
	<p align="center"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLSq5NmDuPXv4dop2VbRq4i7KRJRGdsOfdfQ&usqp=CAU"> </p>
	<div align="center">
	<form name="form1" action="sendmail.jsp" method="post" enctype="multi/form-data">
		<table>
			<tr>
				<td>보내는 사람</td>
				<td><input type="text" name="fromName"></td>
				<td>(보내는 사람 이름)</td>
			</tr>
			
			<tr>
				<td>보내는 사람 E-Mail</td>
				<td><input type="text" name="fromEmail"></td>
				<td>(보내는 사람 이메일 주소)</td>
			</tr>
			
			<tr>
				<td>받는 사람 E-Mail</td>
				<td><input type="text" name="toEmail"></td>
				<td>(받는 사람 이메일 주소)</td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject"></td>
			</tr>
			
			<tr>
				<td>메일 형식</td>
				<td><input type="radio" name="type" value="text" checked>TEXT</td>
				<td><input type="radio" name="type" value="html">HTML</td>
			</tr>
			
			<tr>
				<td>첨부 파일</td>
				<td>
					<p><input type="file" name="attache"></p>
				</td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea name="contents" rows="9" cols="34"></textarea></td>
			</tr>
		</table>
		
		<input type="submit" value="제출">
		<input type="reset" value="초기화">
		<input type="button" value="파일경로" onclick="checkButton()">
	</form>
	</div>
</body>
</html>