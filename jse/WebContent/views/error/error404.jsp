<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>404 에러 발생</title>
</head>
<body>
<div>
	<img src="<%=request.getContextPath()%>/images/404error.png" width=90% />

</div>
<!-- 
http 프로토콜은 응답상태 코드를 이용하여
서버의 처리 결과를 웹브라우져에 알려주며
주요 응답상태 코드로는 다음과 같은 것들이 존재한다.
200 - 정상
307 - 임시로 페이지가 리다이렉트
400 - 클라이언트 요청이 잘못된 구문 - 문법에러
401,403? - 접근 거부(관리자만 접근 가능)
404 - url에 따른 페이지가 존재하지 않음.
405 - 요청된 메서드는 허용되지 않음.(get 방식, post 방식)
500 - 서버 내부 에러. 예를 들어 jsp에서 익셉션이 발생하는 경우.
503 - 서버가 일시적으로 서비스를 제공할 수 없음. 서버 부하(디도스같이)

jsp 가 정상적으로 실행되는 응답코드로 200이 전송되며, 
response.secRedirect() 를 이용할 경우 응답코드로 307이 전송된다.


 -->
	
	
</body>
</html>