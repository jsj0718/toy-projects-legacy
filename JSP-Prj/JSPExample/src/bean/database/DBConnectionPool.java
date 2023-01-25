package bean.database;

import java.sql.*;
import java.util.*;

public class DBConnectionPool {
	
	// 필드는 변경하지 못하게 private로 설정
	private final int MaxConnNum = 50; // 최대 Connection 객체 수
	private Vector<Connection> connStack = new Vector<>(); // 반환된 Connection을 저장하는 리스트
	private String id;	// DB 접속 아이디 ("scott")
	private String password;	// DB 접속 패스워드 ("tiger")
	private String url;	// DB URL ("jdbc:oracle:thin:@127.0.0.1:1521:xe")
	private int loanConnNum;	// 현재 사용되고 있는 Connection 객체 수
	
	// 생성자 함수를 통해 url, id, pw 입력받기
	public DBConnectionPool(String url, String id, String password) {
		this.url = url;
		this.id = id;
		this.password = password;
	}
	
	// Connection 객체 대여 메소드
	public synchronized Connection getConnection() throws Exception {
			Connection conn = null;
			
			// connStack에 Connection 객체가 없는 경우
			while (connStack.size() <= 0) {
				// 1) Connection 객체가 덜 만들어진 경우
				if (loanConnNum < MaxConnNum) {
					conn = makeConnection();
					break;
				// 2) 모두 빌려 기다려야 하는 경우
				} else {
					wait();
				}
			}
			
			// connStack에 Connection 객체가 있는 경우
			if (conn == null) {
				conn = (Connection) connStack.get(0);	// 0번째 요소를 꺼냄
				connStack.removeElementAt(0);			// connStack 리스트에는 삭제
				
				// 만약 Connection 객체의 DB 접속이 끊어진 경우
				if (conn.isClosed()) {
					// 새로운 객체를 만들어 접속
					conn = makeConnection();
				}
			}
			// 대여 수 증가 및 Connection 객체 반환	
			loanConnNum++;
			return conn;
	}
	
	// Connection 객체 생성 함수
	private Connection makeConnection() throws Exception {
		Connection conn = DriverManager.getConnection(url, id, password);
		return conn;
	}
	
	// Connection 객체 반납 함수
	public synchronized void returnConnection(Connection conn) {
		connStack.add(conn);	// connStack 리스트에 Connection 객체 넣기
		loanConnNum--;			// 대여 수 감소
		notifyAll();			// wait 중인 사용자에게 알리기
	}
	
	// Connection 객체 종료 함수
	public synchronized void close() throws Exception {
		// connStack의 객체 수만큼 반복하여 모든 객체 종료시키기
		for (int i=0; i<connStack.size(); i++) {
			Connection conn = (Connection) connStack.get(i);
			conn.close();
		}
		// 그 후 모든 리스트 요소(Connection 객체) 삭제
		connStack.removeAllElements();
	}
	
}
