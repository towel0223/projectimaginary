package song;

import common.JDBConnect;

import java.util.ArrayList;
import java.sql.Blob;
import java.util.*;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletContext;

import song.songDTO;

public class songDAO extends JDBConnect  {
	public songDAO(ServletContext application)
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
				dto.setSphoto(rs.getString(5));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}

		return dto;

	}
	
	public List<songDTO> getSearchList(String searchWord){//제목 or 가수 검색
		List<songDTO> sList = new ArrayList<songDTO>();
		try {
			String sql = "SELECT * FROM song WHERE sname LIKE ? OR stitle LIKE ?";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, "%" + searchWord + "%");
			psmt.setString(2, "%" + searchWord + "%");
			rs = psmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(2);
				String name = rs.getString(3);
				Date date = rs.getDate(4);
				String photo = rs.getString(5);
				
				songDTO dto = new songDTO();
				dto.setSnum(num);
				dto.setStitle(title);
				dto.setSname(name);
				dto.setSdate(date);
				dto.setSphoto(photo);
				
				sList.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	            if (psmt != null) {
	                psmt.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
		return sList;
	}

}
