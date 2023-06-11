<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="like.boardlikeDTO" %>
<%@ page import="like.boardlikeDAO" %>
<%@ page import="board.boardDAO" %>
<%@ page import="board.boardDTO" %>
<%
int boardNum = Integer.parseInt(request.getParameter("num")); //게시물 번호

boardlikeDAO bldao = new boardlikeDAO(application);
boardDAO dao = new boardDAO(application);

int BlikeCheck = bldao.boardlikeCheck((String)session.getAttribute("UserId"), boardNum);

if(BlikeCheck == 1){	//좋아요 누른상태
	bldao.deleteLike((String)session.getAttribute("UserId"), boardNum); //userboardlike 테이블에서 삭제
	dao.MinusLike(boardNum); // 좋아요 1감소
}else{  // 좋아요 안누른 상태
	bldao.insertLike((String)session.getAttribute("UserId"), boardNum);  //userboardlike 테이블에 추가
	dao.PlusLike(boardNum); // 좋아요 1증가
}
response.sendRedirect("FreeBoardList.jsp");
%>
