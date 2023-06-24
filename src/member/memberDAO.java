package member;

import common.JDBConnect;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
      try{
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
      memberDTO dto=new memberDTO();
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
         }}catch(Exception e)
      {
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
   
   public boolean idCheck(String id) {//아이디 중복체크
      boolean result = false;
      String sql = "select * from member";
      try {
         stmt= con.createStatement();
         rs = stmt.executeQuery(sql);
         while(rs.next()) {
            if (rs.getString(1).equals(id)) {
               result = true;
            }
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;
   }
   
   public boolean nicCheck(String nic) {//닉네임 중복 체크
      boolean result = false;
      String sql = "select * from member";
      try {
         stmt= con.createStatement();
         rs = stmt.executeQuery(sql);
         while(rs.next()) {
            if (rs.getString(5).equals(nic)) {
               result = true;
            }
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return result;
   }
   
   public int deleteMember(String id) { //회원삭제
      int result = 0;
      try {
         String sql = "DELETE FROM member WHERE id=?";
         psmt = con.prepareStatement(sql);
         psmt.setString(1, id);
         
         result = psmt.executeUpdate();
      }catch(Exception e) {
         e.printStackTrace();
      }
      return result;
   }
   
     public boolean updateMember(String memberId, String newPass, String newNickname, String newTel) {
        //회원정보 수정
          try {
            String sql = "UPDATE member SET pass = ?, nickname = ?, tel = ? WHERE id = ?";
            psmt = con.prepareStatement(sql);
            psmt.setString(1, newPass);
            psmt.setString(2, newNickname);
            psmt.setString(3, newTel);
            psmt.setString(4, memberId);

            int rs = psmt.executeUpdate();
            psmt.close();

            return rs > 0; // 업데이트된 행의 수가 1 이상이면 성공적으로 업데이트된 것으로 판단
          } catch (SQLException e) {
            e.printStackTrace();
          }

          return false;
        }
     public List<memberDTO> listMember()
     { List<memberDTO> list=new ArrayList<memberDTO>();
        String sql="select id,nickname,name,regidate from member";
        try {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next()) {
              memberDTO dto=new memberDTO();
              dto.setId(rs.getString(1));
              dto.setNickname(rs.getString(2));
              dto.setName(rs.getString(3));
              dto.setRegidate(rs.getDate(4));
              list.add(dto);
           }
           
        }catch(SQLException e) {
           e.printStackTrace();
        
        }
        return list;
     
        
     }
   }
