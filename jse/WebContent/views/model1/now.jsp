<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 디렉티브@ -->
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    
    
   <!--  선언부! -->
    <%! 
    	public int multiply(int a, int b){
    	
    	int c = a*b;
    	return c;
    }
    
    %>
    <!-- 스크립트릿% -->
    <%
    Date now = new Date();
    SimpleDateFormat gh = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 a hh시 mm분 ss초");
    %>
    
  
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>chap02/now.jsp</title>
</head>
<body>
	현재 시간 : 
	<%= gh.format(now) %>
	
	
	<!-- 표현식= -->
	10*25 = <% multiply(10, 25);%>
	
	<!-- 
	JSP에서 제공하는 것들
	1.디렉티브 : 페이지에 대한 설정정보를 지정. (꺽쇠 <퍼센트% 골뱅이@ 디렉티브 이름) @
	2.스크립트 :
		(1)스크립트릿 : 자바 코드를 실행한다. 꺽쇠< 퍼센트% 만 있는거. %
		(2)표현식 : 값을 출력한다. 퍼센트에% 이콜= 이 표현식.  =
		(3)선언부 : 자바 메소드를 만든다. !
	3. EL
	4.기본객체
	5.JSTL	
	
	
	
	 -->
	
	
	
</body>
</html>