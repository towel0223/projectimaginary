package song;

import common.JDBConnect;

import javax.servlet.ServletContext;

import song.songDTO;

public class songDAO extends JDBConnect  {
	songDAO(ServletContext application)
	{
		super(application);
	}
	public songDTO getSongDTO(int sNum){
		songDTO dto=new songDTO();
		String sql="select * from song where snum=?";
		try {
		    psmt=con.prepareStatement(sql);
		    psmt.setInt(1, sNum);
		    rs=psmt.executeQuery();
		    if(rs.next())
		    {
		    	dto.setSnum(rs.getInt(1));
		    	dto.setStitle(rs.getString(2));
		    	dto.setSname(rs.getString(3));
		    	dto.setSdate(rs.getDate(4));
		    	dto.setSphoto(rs.getBlob(5));
		    }
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return dto;
		
	}
	
}
