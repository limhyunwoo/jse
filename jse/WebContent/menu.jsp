<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.Enumeration" %>
  <%@ page import="java.util.Map" %>
  <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    
     <%
    Date now = new Date();
    SimpleDateFormat gh = new SimpleDateFormat("yyyy-MM-dd");			/* 글이 작성된 시간을 표기하기위해서 현재시간을 넣어봤는데, 일단 모양만 그럴싸하게 할라고 넣은겁니다... */
    %>   																
    
    
    <!doctype html>
    <html lang="en">
    <head>
    	<meta charset="UTF-8" />
    	<title>게시판메뉴</title>
    	<style>
	 @IMPORT url("<%=request.getContextPath()%>/menu.css");
	
	</style>
    </head>

<body>
<div>
<div>
 name  =  	<br />
password  = <%= request.getParameter("password") %> 	<br />
title  = <%= request.getParameter("title") %> 	<br />
memo  = <%= request.getParameter("memo") %> 	<br />
category =  	<p></p> 

<div class = "box">
		<ul class="mainMenu">
			
			<li>로맨스</li>
			<li>호러</li>
			<li>액션</li>
			<li>스릴러</li>
			<li>판타지</li>
			<li>무협</li>
		</ul>
		
	</div> 






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

<% if(request.getAttribute("title")!=null){%>   							<!-- 글제목 값이 null이 아니라면 글목록을 표시하라는 조건문, 글제목이랑 카테고리랑 그런게 값이 없는데도 -->
  <tr height="1" bgcolor="#82B5DF"  width = 90% align="center"><td colspan="8"></td></tr>	<!-- null, null, null 이런식으로 표시되지 않게 하려고 우선 모양만 만들기 위해서 넣었습니다. -->



 <tr style="text-align:center;">
 	<td height="20"></td>
 	<td  >1</td>
   <td ><%= request.getAttribute("category") %></td>
   <td >
 
 <a href="<%=request.getContextPath()%>/board/article.do"><%= request.getAttribute("title") %></a> <!-- 글제목부분. 누르면 서블릿을 거쳐서 글본문을 볼 수 있는 페이지로 이동 -->
   
   </td>
   <td ><%= request.getAttribute("id") %></td>
   <td ><% String time = gh.format(now); %>  <%= time %></td>   								<!-- 글작성시간부분 -->
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

	
			
	
			<select name="검색조건" id="검색조건" size = "1" >				<!-- 검색조건 셀렉트창 -->
				<option value="제목">제목</option>
				<option value="내용">내용</option>
				<option value="제목내용">제목+내용</option>
				<option value="아이디">아이디</option>
			
			</select>
			<input type="text" style="width:250px;" />
																			<!-- 이 밑에 것은 글쓰기 버튼을 누를경우 boardForm(글작성 폼)으로 페이지 이동하라는 겁니다. -->
			 <input type=button value="검색">
			
		 <input type=button value="글쓰기" align="right" onClick="location.href='<%=request.getContextPath()%>/boardForm.jsp';">
	 </td>
			

   
   
   
  
  </tr>
 
</table>
<!-- </form> -->
	
	
	</div>
</div>

 
	
</body>
</html>