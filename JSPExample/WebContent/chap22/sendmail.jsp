<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "javax.mail.*, javax.mail.internet.*, javax.activation.*, java.util.*" %>
<%
	String url = "C:/workspace/JSPExample/WebContent/chap22/files/";
	try {
		// request 객체 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 파라미터 받기
		String name = request.getParameter("fromName");
		String from = request.getParameter("fromEmail");
		String to = request.getParameter("toEmail");
		String attache = request.getParameter("attache");
		String type = request.getParameter("type");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
		// System.getProperties() 메서드는 시스템 설정 정보를 Properties 타입으로 리턴
		Properties prop = System.getProperties();
		// Session.getInstance() 메서드를 통해 Session 객체 생성 (매개변수는 Properties 객체)
		Session sessions = Session.getInstance(prop);
		// JAVA Mail에서 메일을 객체화 시킨 객체인 MimeMessage 타입의 객체 생성 (매개변수는 Session 객체)
		MimeMessage message = new MimeMessage(sessions);
		
		// 보내는 이메일, 보내는 사람, 문자셋을 매개변수로 설정하여 InternetAddress 객체 생성 (보내는 입장은 매개변수 3개 필요)
		InternetAddress sendPerson = new InternetAddress(from, name, "UTF-8");
		// 메일 보내는 사람 설정
		message.setFrom(sendPerson);
		// 받는 사람의 이메일 주소를 매개변수로 설정하여 InternetAddress 객체 생성 (받는 입장은 매개변수 1개 필요)
		InternetAddress receivePerson = new InternetAddress(to);
		// 받는 사람의 메일 주소로 설정 (RecipientType과 이메일을 매개변수로 설정)
		message.addRecipient(Message.RecipientType.TO, receivePerson);
		
		// 메일 제목과 문자 타입 설정
		message.setSubject(subject, "UTF-8");
		// 메일 보낸 일자 설정 (Date() 생성자 함수는 현재 날짜를 반환)
		message.setSentDate(new Date());
		
		// 메일 타입에 따른 설정
		if (type.equals("text")) {
			// text 타입의 경우, 메일 내용을 설정하는 메서드인 setText 사용
			message.setText(contents);
		} else {
			// html 타입의 경우, 메일 내용을 설정하는 메서드인 setContents 사용 (메일의 MIME 타입도 같이 설정)
			message.setContent(contents, "text/html;charset=UTF-8");
		}
		
		// 파일이 첨부된 경우
		if ((attache!=null) && (!attache.equals(""))) {
			// Multipart 클래스는 메일에 첨부된 파일을 포함하는 MimeBodyPart 클래스 객체들을 하나로 묶어서 첨부시키는 역할
			Multipart multipart = new MimeMultipart();
			
			// 메일에 첨부되는 파일을 포함하는 MimeBodyPart 타입 객체 생성
			MimeBodyPart mbp1 = new MimeBodyPart();
			MimeBodyPart mbp2 = new MimeBodyPart();

			// 메일에 첨부할 파일을 FileDataSource 객체로 생성(attache 파라미터의 오류로 전송이 안됨)
			FileDataSource source = new FileDataSource(url + attache);
			
			// mbp1 객체에 FileDataSource 객체를 설정함으로써 메일의 본문에 파일을 첨부
			mbp1.setDataHandler(new DataHandler(source));
			// 첨부된 파일의 이름 설정
			mbp1.setFileName(source.getName());
			// 메일의 본문을 설정
			mbp2.setContent(contents, "text/html;charset=UTF-8");
			
			// multipart 객체에 mbp1과 mbp2 객체 첨부
			multipart.addBodyPart(mbp1);
			multipart.addBodyPart(mbp2);
			message.setContent(multipart);
		}
		
		// 메일을 전송하는 Transport 객체 생성 (Session 클래스의 getTransport 메소드로 생성됨. SMTP 방식으로 전송되므로 매개변수로 작성)
		Transport transport = sessions.getTransport("smtp");
		
		// 메일 전송을 위해 SMTP 서버 접속 (host, id, pw 필요)
		String host = "smtp.naver.com";
		String id = "twls1234@naver.com";
		String pass = "ag9345";
		transport.connect(host, id, pass);
		
		// 받는 사람 이메일 주소로 메시지 전송 (매개변수는 Message, Address 객체)
		transport.sendMessage(message, message.getAllRecipients());
		transport.close();
		
	} catch (Exception e) {
		out.println(e.fillInStackTrace());
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 전송 완료</title>
</head>
<body bgcolor="#FFEFA2" text="#804000">
<p align="center"> <img src="https://cdn.crowdpic.net/list-thumb/thumb_l_CA0A0BFD83D56A590EDB93605F8D45AA.png"> </p>
<div align="center">
	<p> 메일 전송에 성공했습니다.</p>
	<a href="mail.jsp">메일 작성 페이지로</a>
</div>
</body>
</html>