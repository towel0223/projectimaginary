package board;

import common.JDBConnect;
import song.songDTO;

import javax.servlet.ServletContext;

import board.boardDTO;

public class boardDAO extends JDBConnect  {
	boardDAO(ServletContext application)
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
}
