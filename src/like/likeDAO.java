package like;

import common.JDBConnect;

import java.sql.SQLException;

import javax.servlet.ServletContext;

public class likeDAO extends JDBConnect{
	public likeDAO(ServletContext application) {
		super(application);
	}
	
	public likeDTO getlikeDTO(String member_id, int comments_num) {
		likeDTO dto = new likeDTO();
		String sql = "select * from userlike where member_id = ? and comments_num = ?";
		try {
			psmt=con.prepareStatement(sql);
			rs=psmt.executeQuery();
			if(rs.next()) {
				dto.setMember_id(rs.getString(1));
				dto.setComments_num(rs.getInt(2));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	
	public int likeCheck(String userID, int commentsNUM) { //댓글 좋아요 중복체크
		int count = 0;
		try {
			String sql = "select * from userlike where member_id = ? and comments_num = ?";
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, userID);
			psmt.setInt(2, commentsNUM);
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
	
	public int insertLike(String userID, int commentsNUM) { //댓글좋아요 테이블에 insert
		int result = 0;
		try {
			String sql = "insert into userlike (member_id, comments_num) values(?, ?)";
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, userID);
			psmt.setInt(2, commentsNUM);
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int deleteLike(String userID, int commentsNUM) { //댓글좋아요 테이블에서 삭제
		int result = 0;
		try {
			String sql = "DELETE FROM userlike WHERE member_id = ? and comments_num = ?";
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, userID);
			psmt.setInt(2, commentsNUM);
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
