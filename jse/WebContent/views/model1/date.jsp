<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>날짜페이지</title>
</head>
<body>
<form action="">

<fieldset>
	<legend>
	주문내용
	</legend>
	
	<ol>
		<li>
		<label for="prod">영화티켓</label>
		<input id="prod" name ="prod" type = "text" size = "25"/>
		
		</li>
		<li>
		<label for="num">예약자리수</label>
		<input id="num" name="num" type = "number" min="1"  max = "5" value="1"/>
		
		</li>
	</ol>
	
	

</fieldset>

<fieldset>
<legend>예약일</legend>

<ol>
	<il>
	최소 예약일은 7일간 입니다.
	
	</il>
	<li>
	<label for="wanted">원하는 예약일</label>
	<input id="wanted" name = "wanted" type = "date" />
	<!-- date month week time datetime -->
	<input type="time" name="time" id="time" />
	
	
	</li>
	
</ol>



</fieldset>



</form>



	
</body>
</html>