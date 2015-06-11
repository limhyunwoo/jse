<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인폼</title>
</head>
<body>

	<form action="login.jsp">
	<table style ="border : 1px solid black; border-collapse: collapse; ">  <!-- 두줄라인 하나로 합치는거가 collapse -->
		<tr style ="border : 1px solid black; ">
			<td style ="border : 1px solid black; ">아이디 :</td>
			<td style ="border : 1px solid black; ">
			<input type="text" name = "memberId" id = "memberId" placeholder="아이디" />  <!-- 희미하게 보이게 하는거 입력란에 -->
			</td>
			
		</tr>
		<tr  style ="border : 1px solid black; border-collapse: collapse; ">
			<td style ="border : 1px solid black; ">패스워드 : </td>
			<td style ="border : 1px solid black; ">
			<input type="password" name = "pass" id = "pass" value="PASSWORD" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="전송" />
			<input type="reset" value="취소" />
			</td>
		</tr>
		
	</table>
	</form>
</body>
</html>