<%!
// Thread 클래스는 Runnable 인터페이스를 구현한 클래스의 객체를 매개변수로 받는다.

// Runnable 인터페이스를 구현한 Runner 클래스 선언
public class Runner implements Runnable {
	int i;
	int sum;
	@Override
	public void run() {
		i = 1;
		while (i <= 5) {
			sum += i;
			i++;
		}
	}
}

// Thread를 활용하는 클래스 선언
class TestThread {
	// 메소드 선언 (Thread 상태를 제어하는 예외인 InterruptedException 예외 떠넘기기)
	public int go() throws InterruptedException {
		Runner r = new Runner();		// Runnable 인터페이스를 구현한 Runner 객체 생성
		Thread t = new Thread(r);		// Thread 생성자 함수에 Runner 객체를 매개 변수로 하여 객체 생성
		t.start();						// Thread를 실행 대기 상태로 만듦
		t.join();						// Thread 실행이 끝날 때까지 코드 진행을 막음 (sleep() 메소드와 유사)
		return r.sum;					// Runner 객체의 결과를 리턴
	}
}
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Thread 클래스 이용</title>
</head>
<body>
<%
	TestThread t = new TestThread();
%>

1부터 10까지의 총합은 <%=t.go() /* Runner 객체의 결과를 리턴한 함수 호출 */%>이다.
</body>
</html>