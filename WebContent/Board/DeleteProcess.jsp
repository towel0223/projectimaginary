<%@ page import="board.boardDAO" %>
<%@ page import="board.boardDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	boardDTO dto = new boardDTO();
	boardDAO dao = new boardDAO(application);
	dto = dao.selectView(num);
	
	String sessionId = session.getAttribute("UserId").toString();
	
	int delResult = 0;
	
	if(sessionId.equals(dto.getId())){
		dto.setNum(num);
		delResult = dao.deletePost(dto);
		dao.close();
		
		if(delResult == 1){
			JSFunction.alertLocation("삭제되었습니다.", "FreeBoardList.jsp", out);
		} else {
			JSFunction.alertBack("삭제에 시랲하였습니다.", out);
		}
	}
	else{
		JSFunction.alertBack("본인만 삭제할 수 있습니다.", out);
	}
	
	return;
%>