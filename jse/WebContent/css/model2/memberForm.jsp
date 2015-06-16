<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입 및 로그인 폼</title>
	
	<style>
	@IMPORT url("../../css/model2/kaup.css");
	</style>
	
	
	
	<script type="text/javascript">
	function join(){
                            														 //버튼 이미지로 처리하는 법.
	document.frmJoin.submit();
	
	}
	
	function login() {
	
	
		document.frmLogin.submit();
	}

	</script>
	
</head>
<body>
	


	<form action="../../model2/join.do" method="post" name ="frmJoin">
	<fieldset>
	<legend>회원가입</legend>
	<table>
	<tr>
		<td>이름</td>
		<td>
		<input type="text" id="name" name = "name" placeholder = "이름을 입력하세요." />
		
		</td>
	</tr>
	
	<tr>
		<td>아이디</td>
		<td>
		<input type="text" id="id" name = "id" placeholder = "아이디를 입력하세요" />
		
		</td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td>
		<input type="password" id="password" name = "password"  />
		
		</td>
	</tr>
	<tr>
		<td>나이</td>
		<td>
		<input type="text" id="age" name = "age" placeholder = "나이를 입력하세요" />
		
		</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>
		<input type="text" id="address" name = "address" placeholder = "주소를 입력하세요" />
		
		</td>
	</tr>
	
	
		<tr>
		<td colspan="2">
		<img src="<%=request.getContextPath() %>/images/btnLogin.jpg" style = "cursor : pointer" alt=""onclick = "return join()" width=20%/>
		</td>
	
	</tr>
	
	
	
	</table>

	</fieldset>
	</form>
	
	<form action="../../model2/login.do" method="post" name = "frmLogin">
	<fieldset>
	<legend>로그인</legend>
	<table>
	<tr>
		<td>아이디</td>
		<td>
		<input type="text" id="id" name = "id" placeholder = "id 입력" />
		
		</td>
	</tr>
	
	<tr>
		<td>패스워드</td>
		<td>
		<input type="password" id="password" name = "password" />
		
		</td>
	</tr>
	
		<tr>
		<td colspan="2">
		<img src="<%=request.getContextPath() %>/images/btnJoin.jpg" style = "cursor : pointer" alt=""onclick = "return login()" width=20%/>
		</td>
	
	</tr>
	
	
	
	</table>

	</fieldset>
	</form>
	


	
</body>
</html>