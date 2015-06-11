<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page isErrorPage = "true" %>
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>에러페이지</title>
</head>
<body background= "<%=request.getContextPath() %>/images/ErrorMessage.png"    width=80% >

에러타입 : <%=  exception.getClass().getName() %>
에러메시지 : <%= exception.getMessage() %>  <br />
<%-- <img src="<%=request.getContextPath() %>/images/ErrorMessage.png" alt="" width="80%" /> --%>
	
</body>
</html>