<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연결 성공</title>
<script>
	function success() {
		alert("성공")
	}
	
	// 아이디 중복 여부 확인 함수
//	function duplicationIdCheck() {
//		var id = document.form.id.value;
		
//		if (id.length == 0) {
//			alert("아이디를 입력하세요.");
//			document.form.id.focus();
//			return false;
//		}
		
		// var sendUrl = "idcheck.jsp?id=" + document.form1.id.value;
		
		// window.open(sendUrl, "id_check", width=500, height=500);	
//	}
	
	// 우편번호 삽입 함수
//	function insertPost() {
//		window.open("post.jsp", "insert_post", toolbar=no,)
//	}
	
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
		
		for (var i=0; i<lowerId.length(); i++) {
			var check = lowerId.charAt(i);
			if (((check<'a')||(check>'z'))&&((check<'0')||(check>'9'))) {
				alphaNumbericCheck = false;
				break;
			}
		}
		
		if (alphaNumbericCheck == false) {
			alert("아이디는 영문 혹은 숫자여야 합니다.");
			document.form1.id.focus();
			return false;
		}
		
		// 비밀번호 양식 확인
		var password = document.form1.password.value();
		
		if (password.length == 0) {
			alert("패스워드를 입력하세요.");
			document.form1.password.focus();
			return false;
		}
		
		if (password.length<4 || password.length>12) {
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
	<input type="button" onClick="success()">
</body>
</html>