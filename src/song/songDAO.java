package song;

import common.JDBConnect;
import se.michaelthelin.spotify.model_objects.specification.Image;

import java.sql.Blob;
import java.util.*;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletContext;

import banner.bannerDTO;
import song.songDTO;

public class songDAO extends JDBConnect  {
	public songDAO()
	{
		super();
	}
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
<<<<<<< HEAD
				
	
=======
				dto.setDuration(rs.getInt(4));
				
>>>>>>> 26ef665967a773824e2cada3dc70dced60211b0f
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
				Integer date = rs.getInt(4);
				
				
				songDTO dto = new songDTO();
				dto.setSnum(num);
				dto.setStitle(title);
				dto.setSname(name);
			
				
				
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
	
	public int InsertSong(songDTO dto){
		int count=0;
		String sql="insert into song(snum,stitle,sname,artist,url,sphoto) values (?,?,?,?,?,?)";
		try{
			psmt=con.prepareStatement(sql);
			psmt.setInt(1, dto.getSnum());
			psmt.setString(2, dto.getUrl());
			psmt.setString(3,dto.getSname());
			psmt.setString(4,dto.getArtist());
			psmt.setString(5,dto.getUrl());
			psmt.setString(6,dto.getPhoto());
			count=psmt.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return count;
	}
	public int UpdateSong(songDTO dto) {
		int count=0;
		String sql="update song set stitle=?,sname=?,artist=?,sphoto=?,url= ? where snum= ?";
		try{
			psmt=con.prepareStatement(sql);
			psmt.setString(1, dto.getStitle());
			psmt.setString(2, dto.getSname());
			psmt.setString(3, dto.getArtist());
			psmt.setString(4, dto.getPhoto());
			psmt.setString(5, dto.getUrl());
			psmt.setInt(6, dto.getSnum());
			count=psmt.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return count;
	}
	public songDTO SelectSong(songDTO dto) {
		songDTO song=new songDTO();
		String sql="select * from song where snum=?";
		try{
			psmt=con.prepareStatement(sql);
			psmt.setInt(1, dto.getSnum());
			rs=psmt.executeQuery();
			if(rs.next())
			{
				song.setSnum(rs.getInt(1));
				song.setStitle(rs.getString(2));
				song.setSname(rs.getString(3));
				song.setArtist(rs.getString(4));
				song.setPhoto(rs.getString(5));
				song.setUrl(rs.getString(6));
				return song;

			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public List<songDTO> getMainSong(){
		List<songDTO> dto=new ArrayList<songDTO>();
		String sql="select * from song";
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				songDTO song=new songDTO();
				song.setSnum(rs.getInt(1));
				song.setStitle(rs.getString(2));
				song.setSname(rs.getString(3));
				song.setArtist(rs.getString(4));
				song.setPhoto(rs.getString(5));
				song.setUrl(rs.getString(6));
				dto.add(song);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return dto;
	}
	

}