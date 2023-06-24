<%@ page import="board.boardDAO" %>
<%@ page import="board.boardDTO" %>
<%@ page import="comments.commentsDAO" %>
<%@ page import="comments.commentsDTO" %>
<%@ page import="member.memberDAO" %>
<%@ page import="member.memberDTO" %>
<%@ page import="like.likeDTO" %>
<%@ page import="like.likeDAO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));

boardDAO dao = new boardDAO(application);
commentsDAO cdao = new commentsDAO(application);
likeDAO ldao = new likeDAO(application);
memberDAO mdao = new memberDAO(application);
memberDTO mdto = mdao.getMemberDTO((String)session.getAttribute("UserId"));
dao.updateVisitCount(num);
boardDTO dto = dao.selectView(num);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판</title>
<link rel="stylesheet" href="./View.css">
<script type="text/javascript">
   function deletePost() {
      var confirmed = confirm("정말로 삭제하시겠습니까?");
      
      if(confirmed) {
         var form = document.writeFrm;
         form.method = "post";
         form.action = "DeleteProcess.jsp";
         form.submit();
      }
   }
</script>
<script type="text/javascript">
   function validateForm(form){
      if(form.content.value == ""){
         alert("내용을 입력하세요.");
         form.content.focus();
         return false;
      }
   }
</script>
</head>
<body>
<jsp:include page="../Common/Nav.jsp" />

<form name="writeFrm">
     <input type="hidden" name="num" value="<%=dto.getNum() %>" />  <!-- 공통 링크 -->
     <table border="1" width="90%">
        <tr>
           <td>번호</td>
           <td><%=dto.getNum() %></td>
           <td>작성자</td>
           <td><%=dto.getId() %></td>
        </tr>
        <tr>
           <td>작성일</td>
           <td><%=dto.getPostdate() %></td>
           <td>조회수</td>
           <td><%=dto.getVisitcount() %></td>
        </tr>
        <tr>
           <td>제목</td>
           <td colspan="3"><%=dto.getTitle() %></td>
        </tr>
        <tr>
           <td>내용</td>
           <td colspan="3" height="100"><%=dto.getContent().replace("\r\n", "<br/>") %></td>
        </tr>
        
        <tr>
           <td colspan="4" align="center">
              <%
              if(session.getAttribute("UserId") != null && (session.getAttribute("UserId").toString().equals(dto.getId())||session.getAttribute("UserId").toString().contains("admin"))) {
              %>
              <button type="button" onclick="location.href='Edit.jsp?num=<%=dto.getNum() %>';">수정하기</button>
              <button type="button" onclick="deletePost();">삭제하기</button>
              <%
              }
              %>
              <button type="button" onclick="location.href='FreeBoardList.jsp'">목록 보기</button>
           </td>
        </tr>
     </table>
</form>
<table>
  <tr>
   <td align="left" bgcolor="skyblue">댓글</td>
  </tr>
</table>
<form name="CommentFrm" method="post" action="../Comments/InsertComments.jsp" onsubmit="return validateForm(this);">
  <%if(session.getAttribute("UserId") != null) {%>
  <%=mdto.getNickname() %><textarea name="Ccontent" style="width: 88%; height: 50px;" placeholder="댓글 작성"></textarea>
  <button type="submit">댓글쓰기</button>
  <input type="hidden" name="num" value="<%=dto.getNum() %>">
  <%} %>
</form>


<% 
List<commentsDTO> commentList = cdao.getCommentList(num); // 댓글 리스트 가져오기

for (commentsDTO comment : commentList) { //댓글 리스트
%>
    <div>
       <ul>
           <li>작성자: <%= comment.getNickName() %>
              <li>내용: <%= comment.getContent() %>
           <li>작성일: <%= comment.getPostdate() %>
           <li> 좋아요: <%=comment.getLikes() %> 
        </ul>
      <%   int likeCheck = ldao.likeCheck((String)session.getAttribute("UserId"), comment.getNum()); //좋아요 확인 %>
    <%if(likeCheck == 0){ %>
        <%if(session.getAttribute("UserId") != null) {%>
        <a href="../Comments/CommentsLike.jsp?num=<%=comment.getNum() %>&boardNum=<%=dto.getNum() %>"><img src="../images/1077035.png" id="unlikeButton" class="<%=comment.getNum()%>" style="width: 20px; height: 20px;"></a>
        <%} 
    }else{
        %>
        <%if(session.getAttribute("UserId") != null) {%>
        <a href="../Comments/CommentsLike.jsp?num=<%=comment.getNum() %>&boardNum=<%=dto.getNum() %>"><img src="../images/138533.png" id="likeButton" class="<%=comment.getNum()%>" style="width: 20px; height: 20px;"></a>
        <%} 
    }
        %>
    </div>
<%
}
%>
<jsp:include page="../Common/Footer.jsp" />
</body>
</html>