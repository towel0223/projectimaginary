<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="like.boardlikeDTO" %>
<%@ page import="like.boardlikeDAO" %>
<%@ page import="board.boardDAO" %>
<%@ page import="board.boardDTO" %>
<%
int boardNum = Integer.parseInt(request.getParameter("num")); //게시물 번호
boolean like=Boolean.parseBoolean(request.getParameter("like"));
String id=session.getAttribute("UserId").toString();
boardDAO dao = new boardDAO(application);
boardlikeDAO like_dao=new boardlikeDAO(application);

if(like_dao.boardlikeCheck(id, boardNum)==0)
{
	like_dao.insertLike(id, boardNum);
	if(like)		{
	
	dao.PlusLike(boardNum); // 좋아요 1증가
	}
	else{
	
	dao.MinusLike(boardNum); // 좋아요 1감소
	}
}
else if(like_dao.boardlikeCheck(id, boardNum)==1)
{
	like_dao.deleteLike(id, boardNum);
	if(like){
		dao.MinusLike(boardNum); // 좋아요 1감소
	}
	else{
		dao.PlusLike(boardNum); // 좋아요 1증가
	}
	
}
response.sendRedirect("FreeBoardList.jsp");
%>
