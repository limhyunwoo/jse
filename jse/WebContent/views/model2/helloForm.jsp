<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<div>

<form action="<%=request.getContextPath()%>/name/hello.nhn">
	<input type="text"  id="name" name="name"  />
	<input type="submit" value="전 송" />
</form>
<p>
</p>
<form action="<%=request.getContextPath()%>/hi.do">
	<input type="text"  id="name" name="name"  />
	<input type="submit" value="피융피융" />
</form>




</div>


	
</body>
</html>