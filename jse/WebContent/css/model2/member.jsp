<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원정보관리</title>
</head>
<body>
	<fieldset>
	<legend>회원가입</legend>
	<table>
	<tr>
		<td>이름</td>
		<td>
		<%-- <%= request.getAttribute("name") %> --%>
		${name} 
		</td>
	</tr>
	
	<tr>
		<td>아이디</td>
		<td>
		<%-- <%= request.getAttribute("id") %> --%>
		${id} 
		
		</td>
	</tr>

	<tr>
		<td>나이</td>
		<td>
		<%-- <%= request.getAttribute("age") %> --%>
		${age }
		</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>
		<%-- <%= request.getAttribute("address") %> --%>
		${address }
		</td>
	</tr>
	<<tr>
	<a href="<%=request.getContextPath()%>/css/model2/memberForm.jsp"> 첨화면으룽 </a>
	</tr>

	
	
	
	</table>

	</fieldset>
</body>
</html>