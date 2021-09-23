<%!
// Thread Ŭ������ Runnable �������̽��� ������ Ŭ������ ��ü�� �Ű������� �޴´�.

// Runnable �������̽��� ������ Runner Ŭ���� ����
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

// Thread�� Ȱ���ϴ� Ŭ���� ����
class TestThread {
	// �޼ҵ� ���� (Thread ���¸� �����ϴ� ������ InterruptedException ���� ���ѱ��)
	public int go() throws InterruptedException {
		Runner r = new Runner();		// Runnable �������̽��� ������ Runner ��ü ����
		Thread t = new Thread(r);		// Thread ������ �Լ��� Runner ��ü�� �Ű� ������ �Ͽ� ��ü ����
		t.start();						// Thread�� ���� ��� ���·� ����
		t.join();						// Thread ������ ���� ������ �ڵ� ������ ���� (sleep() �޼ҵ�� ����)
		return r.sum;					// Runner ��ü�� ����� ����
	}
}
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Thread Ŭ���� �̿�</title>
</head>
<body>
<%
	TestThread t = new TestThread();
%>

1���� 10������ ������ <%=t.go() /* Runner ��ü�� ����� ������ �Լ� ȣ�� */%>�̴�.
</body>
</html>