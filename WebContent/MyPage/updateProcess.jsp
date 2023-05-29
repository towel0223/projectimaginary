<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%@ page import = "utils.JSFunction" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String nId = request.getParameter("id");
String nPass = request.getParameter("NEWpass");
String nName = request.getParameter("name");
String nNic = request.getParameter("NEWnic");
String nTel = request.getParameter("NEWtel1")+request.getParameter("NEWtel2")+request.getParameter("NEWtel3");
memberDTO dto = new memberDTO();
dto.setId(nId);
dto.setPass(nPass);
dto.setName(nName);
dto.setNickname(nNic);
dto.setTel(nTel);
memberDAO dao = new memberDAO(application);
boolean check = dao.nicCheck(nNic);
if(check){//닉네임 중복 체크
	JSFunction.alertBack("이미 사용중인 닉네임 입니다.", out);
}else{
	int result = dao.updateMember(dto);
	dao.close();
	//로그아웃
	session.invalidate();
	//로그인화면으로 이동
	if(result > 0){		
	//JSFunction.alertLocation("회원정보 수정 성공!", "./Login/yLoginForm.jsp", out);
	JSFunction.alertLocation("회원정보 수정 성공! 메인화면으로 이동합니다", "../Main.jsp", out);
	}else{
		JSFunction.alertBack("회원정보 수정 실패!", out);
	}
}
%>
</body>
</html>