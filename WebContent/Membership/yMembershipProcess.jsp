<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%@ page import = "utils.JSFunction" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요시 회원가입 Process</title>
</head>
<body>
<!-- 회원가입 폼에서 값 받아오기 -->
<%
request.setCharacterEncoding("UTF-8");
String yId = request.getParameter("yoshi_id");
String yPw = request.getParameter("yoshi_pw");
String yNic = request.getParameter("yoshi_nic");
String yName = request.getParameter("yoshi_name");
String yTel = request.getParameter("yoshi_tel1")+request.getParameter("yoshi_tel2")+request.getParameter("yoshi_tel3");

//DTO 객체에 저장?
memberDTO dto = new memberDTO();
dto.setId(yId);
dto.setPass(yPw);
dto.setNickname(yNic);
dto.setName(yName);
dto.setTel(yTel);
//DB 연결
memberDAO dao = new memberDAO(application);
//아이디 중복 체크
boolean check = dao.idCheck(yId);
if(check){
	JSFunction.alertBack("이미 사용중인 아이디 입니다.", out);
}else{
	//닉네임 중복 체크
	boolean checkNic = dao.nicCheck(yNic);
	if(checkNic){
		JSFunction.alertBack("이미 사용중인 닉네임 입니다.", out);
	}
int result = dao.setMemberDTO(dto);
dao.close();

//메인화면으로 이동
response.sendRedirect("");

}
%>
</body>
</html>