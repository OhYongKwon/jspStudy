package co.micol.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.dto.BoardDto;

public class BoardDao {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "micol";
	private String password= "micol";
	
	public BoardDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDto> select(){ //전체글조회
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		String sql = "select * from mvc_board";
		BoardDto dto ;
		try {
			psmt = conn.prepareStatement(sql);
			rs=psmt.executeQuery();
			while(rs.next()) {
				dto= new BoardDto();
				dto.setId(rs.getInt("BID"));
				dto.setName(rs.getString("BNAME"));
				dto.setTitle(rs.getString("BTITLE"));
				dto.setContents(rs.getString("BCONTENT"));
				dto.setwDate(rs.getDate("BDATE"));
				dto.setHit(rs.getInt("BHIT"));
				dto.setGroup(rs.getInt("BGROUP"));
				dto.setStep(rs.getInt("BSTEP"));
				dto.setIndent(rs.getInt("BINDENT"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return list;
		
	}
	
	public BoardDto select(int id) { //세부목록조회
		BoardDto dto = new BoardDto();
		close();
		return dto;
	}
	
	public int insert(BoardDto dto) { //글추가
		int n =0;
		String sql = "insert into mvc_board(bid,bname,btitle,bcontent,bdate,bgroup,bstep,bindent)"
				+ " values(b_num.nextval,?,?,?,?,b_num.currval,0,0)";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getContents());
			psmt.setDate(4, (Date) dto.getwDate());
			n= psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
	}
	
	public int update(BoardDto dto) { //글 수정
		int n =0;
		close();
		return n;
	}
	
	public int delete(BoardDto dto) { //글삭제
		int n =0;
		close();
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
