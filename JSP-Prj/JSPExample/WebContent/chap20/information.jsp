<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 정보 입력</title>
<style>
	body {
		background-repeat : no-repeat;
		background-position : center;
		background-attachment : fixed;
		background-image : url('https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F1849BC364D06A1FA1F');
		background-size : 100% 100%;
	}
	
	input {
		background : ;
		border-width : 1;
		border-color : black;
		height : 20px;
		font-size : 9pt;
		font-family : 굴림;
		color : black;
	}
	
	textarea {
		background : ;
		font-size : 9pt;
		font-family : 굴림;
		color : black;
		border : 1 solid black;
		overflow-y: scroll;
		border-width : 1;
	}
	
	td {
		font-family : verdana;
		font-size : 10pt;
		font-weight : 900;
		
	}
</style>

<script>
	// submit()으로 함수 이름을 정하면 기존 함수를 사용함
	function check() {
		if (document.form1.isbn.value.length == 0) {
			alert("isbn 번호를 입력하세요.");
			document.form1.isbn.value.focus();
			return false;
		}
		
		if (document.form1.title.value.length == 0) {
			alert("title을 입력하세요.");
			document.form1.title.value.focus();
			return false;
		}
		
		if (document.form1.author.value.length == 0) {
			alert("author을 입력하세요.");
			document.form1.author.value.focus();
			return false;
		}
		
		if (document.form1.category.value.length == 0) {
			alert("category를 입력하세요.");
			document.form1.category.value.focus();
			return false;
		}
		
		document.form1.submit();
	}
</script>
</head>
<body bgcolor="#FFE6FD" text="black" >
<br><br>

<div align="center">
<form name="form1" action="info_act.jsp" method="post">
	<table>
		<tr>
			<td width="403" height="43" colspan="2" align="left">
				<p align="center">
					Books Information
				</p>
			</td>
		</tr>
		
		<tr>
			<td width="97" height="33">ISBN</td>
			<td width="306" height="33">
				<input type="text" name="isbn" size="40" maxlength="40">
			</td>
		</tr>

		<tr>
			<td width="97" height="33">TITLE</td>
			<td width="306" height="33">
				<input type="text" name="title" size="40" maxlength="50">
			</td>
		</tr>
		
		<tr>
			<td width="97" height="33">AUTHOR</td>
			<td width="306" height="33">
				<input type="text" name="author" size="40" maxlength="40">
			</td>
		</tr>
		
		<tr>
			<td width="97" height="33">PUBLISHER</td>
			<td width="306" height="33">
				<input type="text" name="publisher" size="40" maxlength="40">
			</td>
		</tr>
		
		<tr>
			<td width="97" height="33">PRICE</td>
			<td width="306" height="33">
				<input type="text" name="price" size="40" maxlength="6">
			</td>
		</tr>
				
		<tr>
			<td width="97" height="33">CATEGORY</td>
			<td width="306" height="33">
				<input type="text" name="category" size="40" maxlength="6">
			</td>
		</tr>
		
		<tr>
			<td width="97" height="156">DESCRIPTION</td>
			<td width="306" height="156">
				<textarea name="description" rows="7" cols="40"></textarea>
			</td>
		</tr>
		
		<tr>
			<td width="403" height="19" colspan="2">
				<p align="center">
					<input type="button" value="제출" onClick="check()">
					<input type="reset" value="초기화">
					<input type="button" value="리스트" onclick="location.href='info_list.jsp'">
				</p>
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>