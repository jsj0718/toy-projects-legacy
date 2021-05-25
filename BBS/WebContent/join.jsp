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
						<li><a href="login.jsp">로그인</a></li>
						<li class="active"><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>				
			</ul>			
		</div>
	</nav>
	<%-- 회원가입 양식 만들기 --%>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top : 20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<%-- userID 블록 --%>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<%-- userPassword 블록 --%>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<%-- userName 블록 --%>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
					</div>
					<%-- userGender 블록 (라디오 버튼 활용) --%>
					<div class="form-group" style="text-align : center;">
						<div class="button-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" value="남자" autocomplete="off"> 남자							 
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" value="여자" autocomplete="off"> 여자						 
							</label>
						</div>
					</div>
					<%-- userEmail 블록 --%>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50">
					</div>
					<%-- 제출 버튼 --%>
					<input type="submit" class='btn btn-primary form-control' value="회원가입">
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