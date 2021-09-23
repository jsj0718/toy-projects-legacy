
package mybean.customer;
import java.sql.*;

public class ConnectDatabase {

	public static void main(String[] args) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("JDBC 드라이버를 찾지 못함");
			e.printStackTrace();
		}
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		try {
			Connection connection = DriverManager.getConnection(url, user, password);
			System.out.println("DB와 연결 성공");
			
			connection.close();
		} catch (SQLException e) {
			System.out.println("DB와 연결 실패");
			e.printStackTrace();
		}
	}

}
