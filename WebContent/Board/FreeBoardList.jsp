<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="board.boardDTO" %>
<%@ page import="board.boardDAO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
// 게시물 목록 받아오기
// DAO를 생성해 DB에 연결
boardDAO dao = new boardDAO(application);

// 사용자가 입력한 검색 조건을 Map에 저장
Map<String, Object> param = new HashMap<String, Object>();

String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if(searchWord != null){
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}
 
int totalCount = dao.selectCount(param);  // 게시물 수 확인
 
List<boardDTO> boardLists = dao.selectList(param);  // 게시물 목록 받기
dao.close();  // DB 연결 닫기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요시뮤직 자유게시판</title>
<link rel="stylesheet" href="./FreeBoardList.css">
</head>
<body>
	<jsp:include page="../Common/Nav.jsp" />
	<h2>자유게시판</h2>
	
	<!-- 검색폼 --> 
    <form method="get">  
            <select name="searchField"> 
                <option value="title">제목</option> 
                <option value="content">내용</option>
            </select>
            <input type="text" name="searchWord" />
            <input type="submit" value="검색하기" />
     </form>
 	
	<table border="1" width="90%">
        <!-- 각 칼럼의 이름 --> 
        <tr>
            <th width="8%">번호</th>
            <th width="44%">제목</th>
            <th width="15%">작성자</th>
            <th width="8%">조회수</th>
            <th width="14%">작성일</th>
            <th width="11%">좋아요</th>
        </tr>
        <!-- 목록의 내용 --> 
		<%
		if (boardLists.isEmpty()) {// 게시물이 하나도 없을 때 
		%>
		        <tr>
		            <td colspan="5" align="center"> 등록된 게시물이 없습니다^^* </td>
		        </tr>
		<%
		} else {// 게시물이 있을 때
		    // int virtualNum = 0;  // 화면상에서의 게시물 번호
		    for (boardDTO dto : boardLists)
		    {
		        // virtualNum = totalCount--;  // 전체 게시물 수에서 시작해 1씩 감소
		%>
		        <tr align="center">
		            <td><%= dto.getNum() %></td>  <!--게시물 번호-->
		            <td align="left">  <!--제목(+ 하이퍼링크)-->
		                <a href="View.jsp?num=<%= dto.getNum() %>"><%= dto.getTitle() %></a> 
		            </td>
		            <td align="center"><%= dto.getId() %></td>          <!--작성자 아이디-->
		            <td align="center"><%= dto.getVisitcount() %></td>  <!--조회수-->
		            <td align="center"><%= dto.getPostdate() %></td>    <!--작성일-->
		            <td align="center"><%= dto.getLikes() %></td>    <!--좋아요-->
		           <%if(session.getAttribute("UserId") != null && session.getAttribute("UserId").toString().equals(dto.getId())) {%>
		            <td align="center" id="but"><a href="BoardLike.jsp?num=<%=dto.getNum() %>&like=true"><button id="likeButton" class=<%=dto.getNum()%>>좋아요</button></a>
		            <a href="BoardLike.jsp?num=<%=dto.getNum()%>&like=false"><button id="unlikeButton" class=<%=dto.getNum()%>>싫어요</button></a></td><!-- 좋아요 버튼 -->
		            <% }%>
		        </tr>
		<%
		    }
		}
		%>
	</table>
	<!-- 목록 하단의 [글쓰기] 버튼 -->
	<table border="1" width="90%">
		<tr align="right">
			<td><button type="button" onclick="location.href='Write.jsp';">글쓰기</button></td>
		</tr>
	</table>
	<jsp:include page="../Common/Footer.jsp" />	
	<script>
	var 
	</script>
</body>
</html>