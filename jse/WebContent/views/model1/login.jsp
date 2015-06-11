<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String id = request.getParameter("memberId");   /* 파라미터를 가져가는거, 리퀘스트가 가져가는애 */
    if(id.equals("admin")){
    	response.sendRedirect("now.jsp");    /* 페이지를 이동시키는 거, 어디로 갈지를 결정 */
    	
    }else{
    %>
    <!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 페이지</title>
</head>
<body>
    잘못된 아이디입니다.
    
    
    <%	
    }
    %>
    
    

	
</body>
</html>