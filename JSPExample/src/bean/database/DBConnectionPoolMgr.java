package bean.database;

import java.sql.*;

// DBConnectionPool 객체를 관리하는 클래스
public class DBConnectionPoolMgr {

	private static DBConnectionPoolMgr instance = null;
	private DBConnectionPool pool = null;
	
	// 생성자 함수 private 설정 (싱글톤으로 만들기 위함)
	private DBConnectionPoolMgr() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");	// JDBC Driver 호출
		
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String id = "scott";
		String password = "tiger";
		
		pool = new DBConnectionPool(url, id, password);		// DB 연결과 동시에 DBConnectionPool 객체도 생성
	}
	
	// DBConnectionPoolMgr 객체 호출 함수
	public static synchronized DBConnectionPoolMgr getInstance() throws Exception {
		if (instance == null) {
			instance = new DBConnectionPoolMgr();
		}
		return instance;
	}
	
	// DBConnectionPool 객체 호출 함수
	public Connection getConnection() throws Exception {
		Connection conn = pool.getConnection();
		return conn;
	}
	
	// Connection 객체 반납 함수
	public void returnConnection(Connection conn) {
		pool.returnConnection(conn);
	}
	
	// Connection 객체 종료 함수
	public synchronized void close() throws Exception {
		pool.close();
	}
}
