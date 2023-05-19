package board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;
import board.boardDTO;

public class boardDAO extends JDBConnect  {
	
	public boardDAO(ServletContext application)
	{
		super(application);
	}
	
	public boardDTO getboardDTO(int num){
		boardDTO dto=new boardDTO();
		String sql="select * from board where num=?";
		try {
			psmt=con.prepareStatement(sql);
			psmt.setInt(1, num);
			rs=psmt.executeQuery();
			if(rs.next())
			{
				dto.setNum(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setId(rs.getString(4));
				dto.setPostdate(rs.getDate(5));
				dto.setVisitcount(rs.getInt(6));
				dto.setLikes(rs.getInt(7));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}

		return dto;

	}
	
	public int selectCount(Map<String, Object> map) {
        int totalCount = 0; // 결과(게시물 수)를 담을 변수

        // 게시물 수를 얻어오는 쿼리문 작성
        String query = "SELECT COUNT(*) FROM board";
        if(map.get("searchWord") != null) {
        	query += " WHERE " + map.get("searchField") + " "
        			+ " LIKE '%" + map.get("searchWord") + "%'";
        }
        
        try {
            stmt = con.createStatement();   // 쿼리문 생성
            rs = stmt.executeQuery(query);  // 쿼리 실행
            rs.next();  // 커서를 첫 번째 행으로 이동
            totalCount = rs.getInt(1);  // 첫 번째 칼럼 값을 가져옴
        }
        catch (Exception e) {
            System.out.println("게시물 수를 구하는 중 예외 발생");
            e.printStackTrace();
        }

        return totalCount; 
    }
	
	public List<boardDTO> selectList(Map<String, Object> map) { 
        List<boardDTO> bbs = new Vector<boardDTO>();  // 결과(게시물 목록)를 담을 변수

        String query = "SELECT * FROM board "; 
        //조건 설정
        if(map.get("searchword") != null) {
        	query += " where " + map.get("searchField") + " " + " like '%" + map.get("searchWord") + "%' "; 
        }

        query += " ORDER BY num DESC "; 
        
         try {
            stmt = con.createStatement();   // 쿼리문 생성
            rs = stmt.executeQuery(query);  // 쿼리 실행

            while (rs.next()) {  // 결과를 순화하며...
                // 한 행(게시물 하나)의 내용을 DTO에 저장
                boardDTO dto = new boardDTO(); 

                dto.setNum(rs.getInt("num"));
                dto.setTitle(rs.getString("num"));
                dto.setContent(rs.getString("num"));
                dto.setId(rs.getString("num"));
                dto.setPostdate(rs.getDate("num"));
                dto.setNum(rs.getInt("num"));
                dto.setNum(rs.getInt("num"));

                bbs.add(dto);  // 결과 목록에 저장
            }
        } 
        catch (Exception e) {
            System.out.println("게시물 조회 중 예외 발생");
            e.printStackTrace();
        }

        return bbs;
    }
	
	public int insertWrite(boardDTO dto) {
        int result = 0;
        
        try {
            // INSERT 쿼리문 작성 
            String query = "INSERT INTO board ( "
                         + " num,title,content,id,visitcount) "
                         + " VALUES ( "
                         + " seq_board_num.NEXTVAL, ?, ?, ?, 0)";  

            psmt = con.prepareStatement(query);  // 동적 쿼리 
            psmt.setString(1, dto.getTitle());  
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getId());
            
            result = psmt.executeUpdate(); 
        }
        catch (Exception e) {
            System.out.println("게시물 입력 중 예외 발생");
            e.printStackTrace();
        }
        
        return result;
    }
}
