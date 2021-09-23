package mybean.customer;

import java.sql.*;

public class AddressBookExam {
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
			
			String insertQuery = "INSERT INTO address_book (no, name, address, phone) "
								+ "VALUES (1, '정대만', '서울', '123-4567')";
			stmt.executeUpdate(insertQuery);
			
			insertQuery = "INSERT INTO address_book (no, name, address, phone) "
						+ "VALUES (2, '채치수', '부산', '945-2311')";
			stmt.executeUpdate(insertQuery);
			
			insertQuery = "INSERT INTO address_book (no, name, address, phone) "
					+ "VALUES (3, '송태섭', '울산', '231-1239')";
			stmt.executeUpdate(insertQuery);

			insertQuery = "INSERT INTO address_book (no, name, address, phone) "
					+ "VALUES (4, '서태웅', '경기', '289-2134')";
			stmt.executeUpdate(insertQuery);
			
			insertQuery = "INSERT INTO address_book (no, name, address, phone) "
					+ "VALUES (5, '강백호', '대전', '928-2134')";
			stmt.executeUpdate(insertQuery);

			String selectQuery = "SELECT * FROM address_book ORDER BY 1";
			ResultSet result = stmt.executeQuery(selectQuery);
			
			System.out.println("**********************");
			System.out.println("INSERT 결과");
			System.out.println("**********************");
		
			while (result.next()) {
				int no = result.getInt("NO");
				System.out.println("NO\t : " + no);
				
				String name = result.getString("NAME");
				System.out.println("NAME\t : " + name);
				
				String address = result.getString("ADDRESS");
				System.out.println("ADDRESS\t : " + address);
				
				String phone = result.getString("PHONE");
				System.out.println("PHONE\t : " + phone);
				
				System.out.println("**********************");
			}
			
			String updateQuery = "UPDATE address_book "
								+"SET address = '포항', phone = '852-1294' "
								+"WHERE no = 3";
			stmt.executeUpdate(updateQuery);
			result = stmt.executeQuery(selectQuery);
			
			System.out.println("**********************");
			System.out.println("UPDATE 결과");
			System.out.println("**********************");
			
			while (result.next()) {
				int no = result.getInt("NO");
				System.out.println("NO\t : " + no);
				
				String name = result.getString("NAME");
				System.out.println("NAME\t : " + name);
				
				String address = result.getString("ADDRESS");
				System.out.println("ADDRESS\t : " + address);
				
				String phone = result.getString("PHONE");
				System.out.println("PHONE\t : " + phone);
				
				System.out.println("**********************");
			}
			
			String deleteQuery = "DELETE address_book";
			stmt.executeUpdate(deleteQuery);
			result = stmt.executeQuery(selectQuery);
			
			System.out.println("**********************");
			System.out.println("DELETE 결과");
			System.out.println("**********************");
			
			while (result.next()) {
				int no = result.getInt("NO");
				System.out.println("NO\t : " + no);
				
				String name = result.getString("NAME");
				System.out.println("NAME\t : " + name);
				
				String address = result.getString("ADDRESS");
				System.out.println("ADDRESS\t : " + address);
				
				String phone = result.getString("PHONE");
				System.out.println("PHONE\t : " + phone);
				
				System.out.println("**********************");
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
