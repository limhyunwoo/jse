<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.Enumeration" %>
  <%@ page import="java.util.Map" %>
  <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    
     <%
    Date now = new Date();
    SimpleDateFormat gh = new SimpleDateFormat("yyyy-MM-dd");				/* 영화리뷰게시판 메뉴와 대부분 동일하지만 몇군데 차이점. */
    %>
    
    
    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>공지사항메뉴</title>
    	<style>
	 @IMPORT url("<%=request.getContextPath()%>/menu.css");				
	
	</style>
    </head>

<body>
<div>

 
<%-- name  =  	<br />
password  = <%= request.getParameter("password") %> 	<br />
title  = <%= request.getParameter("title") %> 	<br />
memo  = <%= request.getParameter("memo") %> 	<br />
category =  	<p></p> --%>

	<!-- <div class = "box">
		<ul class="mainMenu">
			
			<li>로맨스</li>
			<li>호러</li>
			<li>액션</li>
			<li>스릴러</li>
			<li>판타지</li>
			<li>무협</li>
		</ul>
		
	</div> -->
	<hr />
	
	<div style="width : 100%  border : 1px solid black">
	
	<table width="50%" cellpadding="0" cellspacing="0" border="0" align = "center">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('<%=request.getContextPath()%>/images/table_mid.gif') repeat-x; text-align:center;">
   <td ><img src="<%=request.getContextPath()%>/images/table_left.gif"  align="left"/></td>
   <td >번호</td>
   <td >카테고리</td>
   <td >제목</td>
   <td >ID</td>
   <td >작성일</td>
   <td >조회수</td>
   <td><img src="<%=request.getContextPath()%>/images/table_right.gif" align="right" /></td>
  </tr>
<tr height="15" align="center">
</tr>

<% if(request.getAttribute("title")!=null){%>
  <tr height="1" bgcolor="#82B5DF"  width = 90% align="center"><td colspan="8"></td></tr>



 <tr style="text-align:center;">
 	<td height="20"></td>
 	<td  >1</td>
   <td ><%= request.getAttribute("category") %></td>
   <td >
 
 <a href="<%=request.getContextPath()%>/board/noticeArticle.do"><%= request.getAttribute("title") %></a>
   
   </td>
   <td ><%= request.getAttribute("id") %></td>
   <td ><% String time = gh.format(now); %>  <%= time %></td>
   <td >623</td>
 </tr>
 <tr height="1" bgcolor="#82B5DF" width=90% align="center"><td colspan="8" ></td></tr>
<% } %>
 

 </table>

 

 
<!--  <form action="article.jsp" method="get"> -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="center">
   <td>

	
			
	
			<select name="검색조건" id="검색조건" size = "1" >
				<option value="제목">제목</option>
				<option value="내용">내용</option>
				<option value="제목내용">제목+내용</option>
				<option value="아이디">아이디</option>
			
			</select>
			<input type="text" style="width:250px;" />
			
			 <input type=button value="검색">
			<% if(request.getAttribute("id")=="administrator"){%>  			<!-- id가 administrator일 경우에만 글쓰기 버튼이 표시되도록 하는 조건문. 글쓰기는 관리자 아이디만. -->
		 <input type=button value="글쓰기" align="right" onClick="location.href='<%=request.getContextPath()%>/noticeBoardForm.jsp';">
		 <%} %>
	 </td>
			

   
   
   
  
  </tr>
 
</table>
<!-- </form> -->
	
	
	</div>
</div>

 
	
</body>
</html>