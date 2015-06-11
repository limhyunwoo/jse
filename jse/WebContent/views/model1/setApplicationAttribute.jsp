<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String value = request.getParameter("value");

if(name != null && value != null){
	request.setAttribute(name,value);   /* 클래스변수처럼 댐, 어플리케이션 영역에 네임과 밸류를 넣었으니까. 어플리케이션은 최상위니깡 */
	
	
}
	
	
%>
    
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JSP 기본 객체의 속성(Attribute)</title>
</head>
<body>

<%
if(name != null && value != null){
	%>
	<%=name %> = <%=value %>
	<%
	
	
}else{
	%>
	request 객체의 속성 설정 안함.
	<%
	
}
%>



	
</body>
</html>
