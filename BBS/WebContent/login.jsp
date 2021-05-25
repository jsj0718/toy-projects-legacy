<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- meta 태그 삽입 (기기의 해상도에 맞게 설정되도록 도움) --%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%-- CSS 호출 --%>
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%-- navigation 생성 (웹사이트의 구성을 보여줌) --%>
	<nav class="navbar navbar-default" role="navigation">
		<%-- 로고를 담는 영역 div 선언 --%>
		<div class="navbar-header">
			<%-- 토글 아이콘 생성 (작은 화면일 때 보임) --%>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false"> 
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>
			</button>
			<%-- 로고 생성 --%>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<%-- 토글 아이콘의 data-target과 동일한 id로 div 태그 생성 --%>
		<div class="collase navbar-collapse" id="bs-example-navbar-collapse-1">
			<%-- 네비게이션 리스트 항목(1) --%>
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a>
				<li><a href="bbs.jsp">게시판</a>
			</ul>
			<%-- 네비게이션 리스트 항목(2) --%>
			<ul class="nav navbar-nav navbar-right">
				<%-- 드랍다운 메뉴 생성 --%>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expended="false">접속하기<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<%-- active 태그는 현재 선택이 되었음을 의미 --%>
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>				
			</ul>			
		</div>
	</nav>
	<%-- 로그인 양식 만들기 --%>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top : 20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">로그인 화면</h3>
					<div class="form-group">
						<%-- name(userID)은 서버 프로그램 작성 시 사용되므로 중요한 요소 --%>
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<%-- name(userPassword)은 서버 프로그램 작성 시 사용되므로 중요한 요소 --%>
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<input type="submit" class='btn btn-primary form-control' value="로그인">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<%-- JS 호출 (순서 중요) --%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>