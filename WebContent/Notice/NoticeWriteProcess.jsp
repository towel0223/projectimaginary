<%@ page import="utils.JSFunction"%>
<%@ page import="notice.noticeDAO"%>
<%@ page import="notice.noticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 1. 로그인여부 체크 IsLoggedIn.jsp -->
<%@ include file="../Board/IsLoggedIn.jsp"%>


<%
// 폼값 받기
String title = request.getParameter("title");
String content = request.getParameter("content");

// 폼값을 DTO 객체에 저장- title,content,id
noticeDTO dto = new noticeDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setId((String)session.getAttribute("UserId"));

// DAO 객체를 통해 DB에 DTO 저장
noticeDAO dao = new noticeDAO(application);
int result = dao.insertWrite(dto);

// DB연결 해제 
dao.close(); 
 
// 글쓰기 성공시 목록 페이지(List.jsp)로 이동. 실패시 "글쓰기실패" 메세지 출력 후 이전 페이지로 이동

if (result == 1) {
	JSFunction.alertLocation("글쓰기 성공","Notice.jsp", out);
} else {
	JSFunction.alertBack("글쓰기 실패", out);
}


%>