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
<%
request.setCharacterEncoding("UTF-8");
String yId = request.getParameter("yoshi_id");
String yPw = request.getParameter("yoshi_pw");
String yNic = request.getParameter("yoshi_nic");
String yName = request.getParameter("yoshi_name");
String yTel = request.getParameter("yoshi_tel1")+request.getParameter("yoshi_tel2")+request.getParameter("yoshi_tel3");


memberDTO dto = new memberDTO();
dto.setId(yId);
dto.setPass(yPw);
dto.setNickname(yNic);
dto.setName(yName);
dto.setTel(yTel);

memberDAO dao = new memberDAO(application);
int result = dao.setMemberDTO(dto);
dao.close();

if(result==1){
	//response.sendRedirect("");
	out.println(yNic);
}else{
	//response.sendRedirect("yMembership.jsp");
	//JSFunction.alertBack("회원가입 실패", out);
}
%>

</body>
</html>