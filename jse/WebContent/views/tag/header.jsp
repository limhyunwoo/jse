<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헤더 샘플</title>
	<style>
	
	@IMPORT url("header.css");
	</style>
	
</head>
<body>
	<div id="wrap"> <!-- wrap, wrapper 의미로 주어지는 클래스나 아이디는
					 body 바로 밑 최상위 div에게 보통 주어진다.문법적 의미는 없다. -->
	<header id="top" >
		<div id = "login">
			<a href="#">login</a> |
			<a href="#">join</a>
		</div>
	
		<div class="clear"></div>
		<div id="logo">
			<a href="#">
				<img src="../../images/cat.jpg" width="200" alt="" />
			</a>
		</div>
		<nav id = "topMenu">
			<ul>
				<li><a href="#">HOME</a></li>
				<li><a href="#">COMPANY</a></li>
				<li><a href="#">SOLUTION</a></li>
				<li><a href="#">CUSTOMER CENTER</a></li>
				<li><a href="#">CONTACT US</a></li>
			
			</ul>
		
		
		
		</nav>
	</header>
	<div class="clear"></div>
	
	</div>  <!-- wrap -->
	
	<div class="clear"></div>

	<footer>
		<hr />
		<div>
			<pre>회사소개 : 청춘의 작고 열락의 싶이 듣기만 안고, 반짝이는 교향악이다. 가장 거친 능히 풀이 그들의 소리다.이것은 봄바람이다. 주는 모래뿐일 가는 칼이다.
			</pre>
		
		
		</div>
	
	</footer>
	
</body>
</html>