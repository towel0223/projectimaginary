package comments;

import common.JDBConnect;

import javax.servlet.ServletContext;

import board.boardDTO;
import comments.commentsDTO;

public class commentsDAO extends JDBConnect  {
	commentsDAO(ServletContext application)
	{
		super(application);
	}
	public commentsDTO getcommentsDTO(int cNum){
		commentsDTO dto=new commentsDTO();
		String sql="select * from comments where cnum=?";
		try {
		    psmt=con.prepareStatement(sql);
		    psmt.setInt(1, cNum);
		    rs=psmt.executeQuery();
		    if(rs.next())
		    {
		    	dto.setCnum(rs.getInt(1));
		    	dto.setId(rs.getString(2));
		    	dto.setContent(rs.getString(3));
		    	dto.setPostdate(rs.getDate(4));
		    	dto.setLikes(rs.getInt(5));
		    }
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return dto;
		
	}
}
