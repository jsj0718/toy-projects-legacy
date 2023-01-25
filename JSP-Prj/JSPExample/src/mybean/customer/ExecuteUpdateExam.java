package mybean.customer;

import java.sql.*;

public class ExecuteUpdateExam {

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
			
			String query1 = "INSERT INTO student1 (no, name, major, phone, adress, professor) "
							+ "VALUES (20200102, '채치수', '물리학과', '010-1234-5664', '경기도 북산시 치수군', '안현수')";
			String query2 = "INSERT INTO student1 (no, name, major, phone, adress, professor) "
							+ "VALUES (20200106, '권준호', '수학과', '010-1842-5614', '경기도 북산시 준호군', '교장')";
			
			int colNum = stmt.executeUpdate(query1);
			System.out.println(colNum + "개의 레코더 삽입");
				colNum = stmt.executeUpdate(query2);
			System.out.println(colNum + "개의 레코더 삽입");
			
			stmt.close();
			conn.close();
			
		} catch (SQLException e) {
			System.out.println("DB와 연결 실패");
			e.printStackTrace();
		}
		
	}

}
