<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 입력</title>
<script>
	function duplicationIdCheck() {
		var id = document.form1.id.value;
		
		if (id.length == 0) {
			alert("아이디를 입력하세요.");
			document.form1.id.focus();
			return false;
		}
		
		var sendUrl = "idcheck.jsp?id=" + document.form1.id.value;
		
		window.open(sendUrl, "id_check", "toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400");

	}
	
	function insertPost() {
		window.open("post.jsp", "insert_post");
	}
	// 올바른 형식 입력 여부 확인 함수 (id, pw, 이름, 이메일)
	function check() {
		// 아이디 양식 확인
		var id = document.form1.id.value;
		
		if (id.length == 0) {
			alert("아이디를 입력하세요");
			document.form1.id.focus();
			return false;
		}
		
		if (id.length<4 || id.length>12) {
			alert("아이디는 4자 이상 12자 미만이여야 합니다.");
			document.form1.id.focus();
			return false;
		}
		
		var lowerId = id.toLowerCase();
		var alphaNumbericCheck = true;
		
		for (var i=0; i<lowerId.length; i++) {
			var check = lowerId.charAt(i);
			if (((check<'a')||(check>'z'))&&((check<'0')||(check>'9'))) {
				alphaNumbericCheck= false;
			}
		}
		
		if (alphaNumbericCheck== false) {
			alert("아이디는 영문과 숫자로만 입력되어야 합니다.");
			document.form1.id.focus();
			return false;			
		}	
		
		// 비밀번호 양식 확인
		var password = document.form1.password.value;
		
		if (password.length == 0) {
			alert("패스워드를 입력하세요.");
			document.form1.password.focus();
			return false;
		}
		
		if (password.length < 4 || password.length > 12) {
			alert("패스워드는 4자 이상 12자 미만이어야 합니다.");
			document.form1.password.focus();
			return false;
		}
		
		var passwordCheck = document.form1.passwordCheck.value;
		
		if (passwordCheck.length == 0) {
			alert("비밀번호 확인을 입력하세요.");
			document.form1.passwordCheck.focus();
			return false;
		}
		
		if (password != passwordCheck) {
			alert("비밀번호가 일치하지 않습니다.");
			document.form1.passwordCheck.focus();
			return false;
		}
		
		// 이름과 이메일 양식 확인
		var name = document.form1.name.value;
		
		if (name.length == 0) {
			alert("이름을 입력하세요.");
			document.form1.name.focus();
			return false;
		}
		
		var email = document.form1.email.value;
		
		if (email.length == 0) {
			alert("이메일을 입력하세요.");
			document.form1.email.focus();
			return false;
		}
		
		document.form1.submit();
	}
</script>
</head>
<body>
	<div align="center">
		<p><img src="data:image/png;base64,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"></p>
		<form name="form1" action="register_act.jsp" method="post">
			<table border="1">
				<tr>
					<td>ID</td>
					<td colspan="2"><input type="text" name="id">
					<input type="button" value="중복 확인" onclick="duplicationIdCheck()"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td colspan="2"><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td colspan="2"><input type="password" name="passwordCheck"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td colspan="2"><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>관심분야</td>
					<td colspan="2"><input type="text" name="favorite"></td>
				</tr>
				<tr>
					<td rowspan="4">연락처</td>
					<td>우편번호</td>
					<td width="290">
					<input type="text" name="zip1" style="width:50px;" readonly onClick="insertPost()">
					- <input type="text" name="zip2" style="width:50px;" readonly onClick="insertPost()">
					<input type="button" name="post" value="우편번호 입력" onClick="insertPost()">
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td width="290"><input type="text" name="address" style="width:200px;"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td width="290"><input type="text" name="tel1" style="width:50px;"> - <input type="text" name="tel2" style="width:50px;"> - <input type="text" name="tel3" style="width:50px;"></td>
				</tr>
				<tr>
					<td>핸드폰</td>
					<td width="290"><input type="text" name="hand1" style="width:50px;"> - <input type="text" name="hand2" style="width:50px;"> - <input type="text" name="hand3" style="width:50px;"></td>
				</tr>
				<tr>
					<td>전자우편</td>
					<td colspan="2"><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>홈페이지</td>
					<td colspan="2"><input type="text" name="homepage" value="https://" style="width:200px;"> </td>
				</tr>
				<tr>
					<td>남기고 싶은 말</td>
					<td colspan="2"><textarea name="remarks" rows="5" cols="43"></textarea></td>
				</tr>
				<tr>
					<td colspan="3">
						<p align="center">
							<input type="button" value="제출" onClick="check()">
							<input type="reset" value="초기화">
						</p>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>