package bean.member;

import java.sql.*;
import bean.database.*;

public class MemberManager {
	// 필드에 MemberManager 타입의 객체 생성 (private 설정)
	private static MemberManager instance = new MemberManager();
	
	// 생성자 함수 private로 설정
	private MemberManager() {
	}
	
	// getInstance() 함수를 통해 객체 반환
	public static MemberManager getInstance() {
		return instance;
	}
	
	// 신입회원 정보 DB에 저장하는 메소드 생성
	public synchronized void registerMember(Member member) throws Exception {
		String id = member.getId();
		String password = member.getPassword();
		String name = member.getName();
		String favorite = member.getFavorite();
		String zip1 = member.getZip1();
		String zip2 = member.getZip2();
		String address = member.getAddress();
		String tel1 = member.getTel1();
		String tel2 = member.getTel2();
		String tel3 = member.getTel3();
		String hand1 = member.getHand1();
		String hand2 = member.getHand2();
		String hand3 = member.getHand3();
		String email = member.getEmail();
		String homepage = member.getHomepage();
		String remarks = member.getRemarks();
		
		DBConnectionPoolMgr dbManager =  DBConnectionPoolMgr.getInstance();
		Connection conn = dbManager.getConnection();
		Statement stmt = conn.createStatement();
		
		String query = "INSERT INTO member_test "
						+ "VALUES ('" + id + "', '" + password + "', '" + name + "', '" + favorite + "', '" + zip1 + "', '" + zip2 + "', '" 
						+ address + "', '" + tel1 + "', '" + tel2 + "', '" + tel3 + "', '" + hand1 + "', '" + hand2 + "', '" + hand3 + "', '"
						+ email + "', '" + homepage + "', '" + remarks + "', sysdate, null)";
		
		stmt.executeUpdate(query);
		stmt.close();
		dbManager.returnConnection(conn);
	}
	
	// 수정된 회원정보를 저장하는 메소드 선언
	public synchronized void updateMember(Member member) throws Exception {
		String id = member.getId();
		String password = member.getPassword();
		String name = member.getName();
		String favorite = member.getFavorite();
		String zip1 = member.getZip1();
		String zip2 = member.getZip2();
		String address = member.getAddress();
		String tel1 = member.getTel1();
		String tel2 = member.getTel2();
		String tel3 = member.getTel3();
		String hand1 = member.getHand1();
		String hand2 = member.getHand2();
		String hand3 = member.getHand3();
		String email = member.getEmail();
		String homepage = member.getHomepage();
		String remarks = member.getRemarks();
		
		DBConnectionPoolMgr dbManager = DBConnectionPoolMgr.getInstance();
		Connection conn = dbManager.getConnection();
		Statement stmt = conn.createStatement();
		
		String query = "UPDATE member_test "
						+ "SET (password = '" + password + "', name = '" + name + "', favorite = '" + favorite +"', zip1 = '" + zip1 
						+ "', zip2 = '" + zip2 + "', address = '" + address + "', tel1 = '" + tel1 + "', tel2 = ' " + tel2 + "', tel3 = '" 
						+ tel3 + "', hand1 = '" + hand1 + "', hand2 = '" + hand2 + "', hand3 = '" + hand3 + "', email = '" + email
						+ "',homepage = '" + homepage + "', remarks = '" + remarks + "'WHERE id = '" + id + "'";
		
		stmt.executeUpdate(query);
		stmt.close();
		dbManager.returnConnection(conn);
	}
	
	// 아이디가 존재하는지 확인하는 메소드 선언
	public boolean idCheck(String id) throws Exception {
		DBConnectionPoolMgr dbManager = DBConnectionPoolMgr.getInstance();
		Connection conn = dbManager.getConnection();
		Statement stmt = conn.createStatement();
				
		String query = "SELECT COUNT(id) FROM member_test";
		ResultSet result = stmt.executeQuery(query);
		result.next();
		int idCount = result.getInt(1);
		
		result.close();
		stmt.close();
		dbManager.returnConnection(conn);
		
		if (idCount == 0) {
			return false;		// 없는 아이디면 false
		} else {
			return true;		// 이미 존재하면 true
		}	
	}
	
	public boolean passwordCheck(String id, String password) throws Exception {
		DBConnectionPoolMgr dbManager = DBConnectionPoolMgr.getInstance();
		Connection conn = dbManager.getConnection();
		Statement stmt = conn.createStatement();
		
		String query = "SELECT password FROM member_test WHERE id = '" + id + "'";
		ResultSet result = stmt.executeQuery(query);
		result.next();
		String savedPassword = result.getString(1);
		
		result.close();
		stmt.close();
		dbManager.returnConnection(conn);
		
		if (password.equals(savedPassword)) {
			return true;
		} else {
			return false;
		}
	}
	
	// 로그인 시간 설정
	public void login(String id) throws Exception {
		DBConnectionPoolMgr dbManager = DBConnectionPoolMgr.getInstance();
		Connection conn = dbManager.getConnection();
		Statement stmt = conn.createStatement();
		
		String query = "UPDATE member_test SET jointime = sysdate WHERE id = '" + id + "'";
		stmt.executeUpdate(query);
		
		stmt.close();
		dbManager.returnConnection(conn);
	}
	
	// 계정 삭제 메소드 선언
	public synchronized void deleteMember(String id) throws Exception {
		DBConnectionPoolMgr dbManager = DBConnectionPoolMgr.getInstance();
		Connection conn = dbManager.getConnection();
		Statement stmt = conn.createStatement();
		
		String query = "DELETE FROM member_test WHERE id = '" + id + "'";
		stmt.executeUpdate(query);
		
		stmt.close();
		dbManager.returnConnection(conn);
	}
	
	// DB에 회원정보를 검색하여 해당 회원의 정보를 리턴하는 메소드 선언
	public synchronized Member getMember(String id) throws Exception {
		DBConnectionPoolMgr dbManager = DBConnectionPoolMgr.getInstance();
		Connection conn = dbManager.getConnection();
		Statement stmt = conn.createStatement();
		
		String query = "SELECT * FROM member_test WHERE id = '" + id + "'";
		ResultSet result = stmt.executeQuery(query);
		result.next();
		
		Member member = new Member();
		
		member.setId(result.getString(1));
		member.setPassword(result.getString(2));
		member.setName(result.getString(3));
		member.setFavorite(result.getString(4));
		member.setZip1(result.getString(5));
		member.setZip2(result.getString(6));
		member.setAddress(result.getString(7));
		member.setTel1(result.getString(8));
		member.setTel2(result.getString(9));
		member.setTel3(result.getString(10));
		member.setHand1(result.getString(11));
		member.setHand2(result.getString(12));
		member.setHand3(result.getString(13));
		member.setEmail(result.getString(14));
		member.setHomepage(result.getString(15));
		member.setRemarks(result.getString(16));
		member.setJointime(result.getString(17));
		member.setLogintime(result.getString(18));
		
		result.close();
		stmt.close();
		dbManager.returnConnection(conn);
		
		return member;
	}
}
