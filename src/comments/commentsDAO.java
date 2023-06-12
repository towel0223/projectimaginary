package comments;

import common.JDBConnect;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import board.boardDTO;
import comments.commentsDTO;

public class commentsDAO extends JDBConnect  {
	public commentsDAO(ServletContext application)
	{
		super(application);
	}
	public commentsDTO getcommentsDTO(commentsDTO dto){
		String sql="select * from comments";
		try {
			psmt=con.prepareStatement(sql);
			rs=psmt.executeQuery();
			if(rs.next())
			{	
				dto.setNum(rs.getInt(1));
				dto.setCnum(rs.getInt(2));
				dto.setId(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setPostdate(rs.getDate(5));
				dto.setLikes(rs.getInt(6));
				dto.setNickName(rs.getString(7));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}

		return dto;

	}
	
	public int insertComment(commentsDTO dto) { //댓글 작성
        int result = 0;
        
        try {
            // INSERT 쿼리문 작성 
            String query = "INSERT INTO comments ( "
                         + " num,cnum,id,nickname,content,postdate) "
                         + " VALUES ( "
                         + " seq_comments_num.NEXTVAL, ?, ?, ?, ?, sysdate)";  

            psmt = con.prepareStatement(query);  // 동적 쿼리 
            psmt.setInt(1, dto.getCnum());  
            psmt.setString(2, dto.getId());  
            psmt.setString(3, dto.getNickName());
            psmt.setString(4, dto.getContent());
            
            result = psmt.executeUpdate(); 
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
	
	public List<commentsDTO> getCommentList(int num){ //게시물 번호에 따른 댓글 리스트
		List<commentsDTO> cList = new ArrayList<>();
		
		String sql = "SELECT * FROM comments WHERE cnum=?";
		try {
			 psmt = con.prepareStatement(sql); // 동적 쿼리
			 psmt.setInt(1, num);
	         rs = psmt.executeQuery();  // 쿼리 실행
	         
	         while(rs.next()) {
	        	 commentsDTO dto = new commentsDTO();
	        	 dto.setNum(rs.getInt("num"));
	        	 dto.setCnum(rs.getInt("cnum"));
	        	 dto.setId(rs.getString("id"));
	        	 dto.setContent(rs.getString("content"));
	        	 dto.setNickName(rs.getString("nickname"));
	        	 dto.setPostdate(rs.getDate("postdate"));
	        	 dto.setLikes(rs.getInt("likes"));
	        	 
	        	 cList.add(dto); // 결과 목록에 저장
	         }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cList;
	}
	
	public int PlusLike(int num) {
	    int result = 0;
	    try {
	        String sql = "UPDATE comments SET likes = likes + 1 WHERE num = ?";
	        psmt = con.prepareStatement(sql);
	        psmt.setInt(1, num);

	        result = psmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        // 리소스를 정리하는 부분
	        try {
	            if (psmt != null) {
	                psmt.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return result;
	}
	
	public int MinusLike(int num) {
	    int result = 0;
	    try {
	        String sql = "UPDATE comments SET likes = likes - 1 WHERE num = ?";
	        psmt = con.prepareStatement(sql);
	        psmt.setInt(1, num);

	        result = psmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        // 리소스를 정리하는 부분
	        try {
	            if (psmt != null) {
	                psmt.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return result;
	}

}
