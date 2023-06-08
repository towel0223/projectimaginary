<%@ page import="notice.noticeDAO" %>
<%@ page import="notice.noticeDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Board/IsLoggedIn.jsp" %>

<%
	// 수정페이지(Edit.jsp) 페이지로부터 받아온 내용을 DB에 반영
	int num = Integer.parseInt(request.getParameter("num"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	noticeDTO dto = new noticeDTO();
	dto.setNum(num);
	dto.setTitle(title);
	dto.setContent(content);

	noticeDAO dao = new noticeDAO(application);
	int result = dao.updateEdit(dto);
	
	dao.close();
	
	// 수정 성공/실패 처리 
     // 성공시 상세 보기 페이지로 이동
     // 실패 시 이전 페이지로 이동
     
     if(result == 1){
    	 response.sendRedirect("NoticeView.jsp?num=" + dto.getId());
     } else{
    	 JSFunction.alertBack("수정 실패", out);
     }

%>