package like;

import common.JDBConnect;

import java.sql.SQLException;

import javax.servlet.ServletContext;

public class boardlikeDAO extends JDBConnect{
	public boardlikeDAO(ServletContext application) {
		super(application);
	}
	
	public boardlikeDTO getboardlikeDTO(String member_id, int board_num) {
		boardlikeDTO dto = new boardlikeDTO();
		String sql = "select * from userboardlike where member_id = ? and board_num = ?";
		try {
			psmt = con.prepareStatement(sql);
			rs=psmt.executeQuery();
			if(rs.next()) {
				dto.setMember_id(rs.getString(1));
				dto.setBoard_num(rs.getInt(2));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	
	public int boardlikeCheck(String userID, int boardNUM) { //보드 좋아요 중복체크
		int count = 0;
		try {
			String sql = "select * from userboardlike where member_id = ? and board_num = ?";
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, userID);
			psmt.setInt(2, boardNUM);
			rs = psmt.executeQuery();
			
			if(rs.next()) {				
				count = 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			// 리소스를 정리하는 부분
			try {
				if (psmt != null) {
	                psmt.close();
	            }
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	
	public int insertLike(String userID, int board_num) { //보드좋아요 테이블에 insert
		int result = 0;
		try {
			String sql = "insert into userboardlike (member_id, board_num) values(?, ?)";
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, userID);
			psmt.setInt(2, board_num);
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			// 리소스를 정리하는 부분
			try {
				if (psmt != null) {
	                psmt.close();
	            }
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int deleteLike(String userID, int board_num) { //보드좋아요 테이블에서 삭제
		int result = 0;
		try {
			String sql = "DELETE FROM userboardlike WHERE member_id = ? and board_num = ?";
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, userID);
			psmt.setInt(2, board_num);
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			// 리소스를 정리하는 부분
			try {
				if (psmt != null) {
	                psmt.close();
	            }
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
}
