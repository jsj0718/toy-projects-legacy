package mybean.customer;

import java.sql.*;

public class ExecuteQueryExam {

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
			Connection conn = DriverManager.getConnection(url, user, password);
			Statement stmt = conn.createStatement();
			
			String query1 = "SELECT name, major, adress FROM student1";
			ResultSet result = stmt.executeQuery(query1);
			
			while (result.next()) {
				System.out.println("********************");
				String name = result.getString("name");
				System.out.println("이름 : " + name);
				
				String major = result.getString("major");
				System.out.println("학과 : " + major);
				
				String adress = result.getString("adress");
				System.out.println("주소 : " + adress);
				System.out.println("********************");
			}
			
			result.close();
			stmt.close();
			conn.close();
			
		} catch (SQLException e) {
			System.out.println("DB 연동 실패");
			e.printStackTrace();
		}
	}

}
