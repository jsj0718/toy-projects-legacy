package mybean.customer;

import java.sql.*;

public class PreparedExam {
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			Statement stmt = conn.createStatement();
			String deleteQuery = "DELETE student1";
			stmt.executeUpdate(deleteQuery);
			
			String query = "INSERT INTO student1 (no, name, major, phone, adress, professor) "
						+ "VALUES (?, ?, ?, ?, ?, ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, 20020110);
			pstmt.setString(2, "채치수");
			pstmt.setString(3, "물리학과");
			pstmt.setString(4, "010-1234-5667");
			pstmt.setString(5, "경기도 북산시 치수군");
			pstmt.setString(6, "안선생님");
			
			int colNum = pstmt.executeUpdate();
			System.out.println(colNum + "개의 데이터 삽입 성공");
			
			pstmt.setInt(1, 20020111);
			pstmt.setString(2, "정대만");
			pstmt.setString(3, "체육학과");
			pstmt.setString(4, "010-4213-1283");
			pstmt.setString(5, "경기도 북산시 대만군");
			pstmt.setString(6, "안선생님");
			
			colNum = pstmt.executeUpdate();
			System.out.println(colNum + "개의 데이터 삽입 성공");
			
			pstmt.close();
			stmt.close();
			conn.close();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		
	}
}
