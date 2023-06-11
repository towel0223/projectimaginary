<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="comments.commentsDAO" %>
<%@ page import="comments.commentsDTO" %>
<%@ page import="like.likeDTO" %>
<%@ page import="like.likeDAO" %>
<%
int commentNum = Integer.parseInt(request.getParameter("num")); //댓글 번호
int boardNum = Integer.parseInt(request.getParameter("boardNum")); //게시물 번호

likeDAO ldao = new likeDAO(application);
commentsDAO cdao = new commentsDAO(application);

int likeCheck = ldao.likeCheck((String)session.getAttribute("UserId"), commentNum); //좋아요 확인

if(likeCheck == 1){	//좋아요 누른상태
	ldao.deleteLike((String)session.getAttribute("UserId"), commentNum); //userlike 테이블에서 삭제
	cdao.MinusLike(commentNum); // 좋아요 1감소
}else{  // 좋아요 안누른 상태
	ldao.insertLike((String)session.getAttribute("UserId"), commentNum);  //userlike 테이블에 추가
	cdao.PlusLike(commentNum); // 좋아요 1증가
}

response.sendRedirect("../Board/View.jsp?num=" + boardNum);
%>
