<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- meta 태그 삽입 (기기의 해상도에 맞게 설정되도록 도움) --%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%-- CSS 호출 --%>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요합니다.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않는 글입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if (!userID.equals(bbs.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
	%>
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
				<li class="active"><a href="bbs.jsp">게시판</a>
			</ul>
			<%-- 네비게이션 리스트 항목(2) --%>
			<ul class="nav navbar-nav navbar-right">
				<%-- 드랍다운 메뉴 생성 --%>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expended="false">회원관리<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<%-- active 태그는 현재 선택이 되었음을 의미 --%>
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>				
			</ul>
		</div>
	</nav>
	<%-- 글 수정 양식 블록 --%>
	<div class="container">
		<div class="row">
			<form method="post" action="updateAction.jsp?bbsID=<%=bbsID%>">
				<table class="table table-striped" style="text-align : center; border : 1px solid #dddddd">
					<%-- 테이블 제목 부분 --%>
					<thead>
						<tr>
							<th colspan="2" style="background-color : #eeeeee; text-align : center;">게시판 글 수정 양식</th>
						</tr>
					</thead>
					<%-- 테이블 본문 부분 (글 제목, 글 내용) --%>
					<tbody>
						<tr>
							<th><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle() %>"></th>
						</tr>
						<tr>
							<th><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height : 350px"><%= bbs.getBbsContent() %></textarea></th>
						</tr>
					</tbody>
				</table>
				<%-- 글 수정 제출 버튼 --%>
				<input type="submit" class="btn btn-primary pull-right" value="글 수정">
			</form>
		</div>
	</div>
	<%-- JS 호출 (순서 중요) --%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>