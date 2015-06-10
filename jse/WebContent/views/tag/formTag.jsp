<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Form 태그</title>
</head>
<body>
	<form action="">
		<fieldset>
			<legend>데이터 전송</legend>
			<tr>아이디</tr> &nbsp;&nbsp;
			<input type="text" name = "id" value="ID"/><br />
			<tr>비밀번호</tr>
			<input type="password" name = "pass" /><br />
			<label for="hello">인사말 : </label><br />
			<textarea name="area" id="area" cols="30" rows="10"></textarea><br />
			<input type="image" src = "../../images/pokemon.gif" width = "300"/>
		
		</fieldset>
	</form>



</body>
</html>