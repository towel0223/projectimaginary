package banner;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class bannerDAO extends JDBConnect {
	public bannerDAO(){
		super();
	}
	
	public bannerDAO(ServletContext application){
		super(application);
	}
	
	public int InsertBanner(bannerDTO dto){
		int count=0;
		String sql="insert into banner values (?,?,?)";
		try{
			psmt=con.prepareStatement(sql);
			psmt.setInt(1, dto.getNum());
			psmt.setString(2, dto.getUrl());
			psmt.setString(3,dto.getFname());
			count=psmt.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return count;
	}
	public int UpdateBanner(bannerDTO dto) {
		int count=0;
		String sql="update banner set url= ? where num= ?";
		try{
			psmt=con.prepareStatement(sql);
			psmt.setString(1, dto.getUrl());
			psmt.setInt(2, dto.getNum());
			count=psmt.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return count;
	}
	public bannerDTO SelectBanner(bannerDTO dto) {
		bannerDTO banner=new bannerDTO();
		String sql="select * from banner where num=?";
		try{
			psmt=con.prepareStatement(sql);
			psmt.setInt(1, dto.getNum());
			rs=psmt.executeQuery();
			if(rs.next())
			{
				banner.setNum(rs.getInt(1));
				banner.setUrl(rs.getString(2));
				banner.setFname(rs.getString(3));
				return banner;

			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public List<bannerDTO> getMainBanner(){
		List<bannerDTO> dto=new ArrayList<bannerDTO>();
		String sql="select * from banner";
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				bannerDTO banner=new bannerDTO();
				banner.setNum(rs.getInt(1));
				banner.setUrl(rs.getString(2));
				banner.setFname(rs.getString(3));
				dto.add(banner);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return dto;
	}
	


}
