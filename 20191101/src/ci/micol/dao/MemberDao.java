package ci.micol.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import ci.micol.dto.MemberDto;

public class MemberDao {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "micol";
	private String password= "micol";
	
	public MemberDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDto> select(){//조회구문작성
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		return list;
	}
	
	public MemberDto select(String id) { //한사람데이터확인
		MemberDto dto = new MemberDto();
		
		
		String sql ="select * from member where memberid =?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getString("memberid"));
				dto.setName(rs.getString("membername"));
				dto.setPassword(rs.getString("memberpw"));
				dto.setGrant(rs.getString("membergrant"));
				dto.setEnterDate(rs.getDate("memberenterdate"));
				dto.setAddr(rs.getString("memberaddr"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return dto;
	}
	public String isLoginCheck(String id,String pw) {
		MemberDto dto = new MemberDto();
		String grant=null;
		String sql = "select * from member where memberid=? and memberpw=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				 grant =rs.getString("membergrant");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return grant;

	}
	public int insert(MemberDto dto) {//추가구문작성
		int n=0;
		return n;
	}
	public int update(MemberDto dto) {//갱신구문작성
		int n=0;
		return n;
	}
	public int delete(MemberDto dto) {//삭제구문작성
		int n=0;
		return n;
	}
	private void close() {
		try {
			if(rs != null)  rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
}
