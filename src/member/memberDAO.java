package member;

import common.JDBConnect;

import javax.servlet.ServletContext;

import member.memberDTO;

public class memberDAO extends JDBConnect  {
	public memberDAO(ServletContext application)
	{
		super(application);
	}
	public memberDTO getMemberDTO(String id){ //데이터 검색
		memberDTO dto=new memberDTO();
		String sql="select * from member where id=?";
		try {
		    psmt=con.prepareStatement(sql);
		    psmt.setString(1, id);
		    rs=psmt.executeQuery();
		    if(rs.next())
		    {
		    	dto.setId(rs.getString(1));
		    	dto.setPass(rs.getString(2));
		    	dto.setName(rs.getString(3));
		    	dto.setTel(rs.getString(4));
		    	dto.setNickname(rs.getString(5));
		    	dto.setRegidate(rs.getDate(6));
		    
		    }
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return dto;
		
	}
	
	public boolean checkId(String id) {
		boolean result=true;
		try {
			String sql = "select id from member where id=?";
			psmt=con.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			while(rs.next()) {
			if(id.equals(rs.getString(1))) {
				result=false;
				break;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int setMemberDTO(memberDTO dto) {//회원가입
		int result = 0;
		try {
			String sql = "INSERT INTO member"
					+ " ( id, pass, name, tel, nickname, regidate)"
					+ " VALUES ( "
					+ " ?, ?, ?, ?, ?, sysdate)";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getTel());
			psmt.setString(5, dto.getNickname());
		
			result = psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
