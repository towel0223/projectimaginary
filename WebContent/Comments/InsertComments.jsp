<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="comments.commentsDAO" %>
<%@ page import="comments.commentsDTO" %>
<%@ page import="member.memberDAO" %>
<%@ page import="member.memberDTO" %>
<%@ page import="utils.JSFunction"%>
<%
request.setCharacterEncoding("UTF-8");
memberDAO mdao = new memberDAO(application);
memberDTO mdto = mdao.getMemberDTO((String)session.getAttribute("UserId"));

String Ccontent = request.getParameter("Ccontent");
int num = Integer.parseInt(request.getParameter("num"));
commentsDTO dto = new commentsDTO();
dto.setId((String)session.getAttribute("UserId"));
dto.setCnum(num);
dto.setContent(Ccontent);
dto.setNickName(mdto.getNickname());

commentsDAO cdao = new commentsDAO(application);
int result = cdao.insertComment(dto);
cdao.close();

String redirectUrl = "../Board/View.jsp?num=" + num;
if (result == 1) {
	response.sendRedirect(redirectUrl);
} else {
	JSFunction.alertBack("댓글 작성 실패", out);
}
%>