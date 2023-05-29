<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.memberDAO" %>
<%@ page import="member.memberDTO" %>
<%@ page import = "utils.JSFunction" %>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
memberDTO dto = new memberDTO();
dto.setId(id);
memberDAO dao = new memberDAO(application);
int successDel = dao.deleteMember(dto);
dao.close();
if(successDel > 0){
	session.invalidate();
	JSFunction.alertLocation("탈퇴 성공!", "../Main.jsp", out);
}else{
	JSFunction.alertBack("탈퇴 실패!", out);
}
%>