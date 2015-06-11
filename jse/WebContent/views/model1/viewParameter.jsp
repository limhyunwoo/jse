<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.util.Enumeration" %>
  <%@ page import="java.util.Map" %>
  
  <%
  /* 	request.setCharacterEncoding("UTF-8"); */
  
  %>
  
  <!-- request.getParameter() 는 낱개 파라미터 값을 키값과 밸류값을 리턴
  			request.getParameterValues() 는 키값 없이 벨류값만 리턴(체크박스에서 사용)
  			request.getParameterNames() 키값만 리턴인데 흠..쓸모없다구함
  			request.getParameterMap()는 파라미터 벨류가 복수인 경우( 아이디랑 비번을 같이 던져야하는경우같이..)
  
  
  
  
   -->
  
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>폼값을 받은 페이지</title>
</head>
<body>
<div>
<b>request.getParameter() 메서드 사용</b> <br />
name 파라미터 = <%= request.getParameter("name") %> 	<br />
address 파라미터 = <%= request.getParameter("address") %> 	<p></p>

<b>request.getParameterValues() 메서드 사용</b> <br />

<%
String [] values = request.getParameterValues("pet");
if(values != null){
	for(int i = 0; i <values.length; i++){
		%>
		
			넘어온 벨류 :  <%=values[i] %> <br />
		 <%
			
			}
		}
	%>
	<b>request.getParameterNames() 메서드 사용</b> <br />
	<%
	Enumeration paraEnum = request.getParameterNames();
	while(paraEnum.hasMoreElements()){
		String name = (String)paraEnum.nextElement();
		%>
		
		
										<!-- 자바영역을 이렇게 나눈 이유는 가운데에 만든 html 영역에 아래의 표현식을 웹브라우져에 보이게하기 위해서임 -->
		<%= name%> <br />
		
		<%
		
	}
	



%>

<b>request.getParameterMap() 메소드 사용   </b> <br />

<%
Map paramMap = request.getParameterMap();
String[] nameParam = (String []) paramMap.get("name");
if(nameParam != null){
	%>
	이름 = <%= nameParam[0]%>
	<%
}

%>






</div>



	
</body>
</html>