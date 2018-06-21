<!DOCTYPE HTML>
<!--
	Hielo by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Hielo by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/resources/css/main.css?ver=4" />
</head>
<style>
.search1 {
	text-align: center;
}

#search {
	min-width: 180px;
}

.search {
	width: 33%;
	margin-left: 33%;
}

#selectbox {
	display: inline-block;
	width: 60%;
}

.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	font-size: 1.3em;
	color: black;
	float: left;
	padding: 8px 5px;
	text-decoration: none;
	color: black;
}

.pagination a.active {
	background-color: pink;
	color: white;
}

.pagination

 

a


:hover


:not

 

(
.active

 

){
background-color


:

 

pink


;
}
.categoryList {
	text-align: center;
	background-color: salmon;
	height: 54px;
}

.category1 {
	width: 200px; color : black;
	display: inline-block;
	font-size: 2.2em;
	border-left: 2px solid red;
	border-right: 2px solid red;
	color: black;
}
</style>
<body>

	<!-- Header -->
	<!-- 			<header id="header" class="alt">
				<div class="logo"><a href="index.html">Hielo <span>by TEMPLATED</span></a></div>
				<a href="#menu">Menu</a>
			</header> -->
	<!-- Header -->
	<header id="header">
		<div class="logo">
			<a href="/board/list">Candy~ <span>almond</span></a>
		</div>
		<a href="#menu">Menu</a>
	</header>
	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/board/list">Home</a></li>
			<li><a href="/up/ajax">Image gallery</a></li>
		</ul>
	</nav>
	<!-- One -->
	<section id="One" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<p>Sed amet nulla</p>
				<h2>Elements</h2>
			</header>
		</div>
	</section>
	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/home">Home</a></li>
			<li><a href="/foodtruck">FoodTruck</a></li>
			<li><a href="/ranking">Ranking</a></li>
		</ul>
	</nav>

	<!-- Banner -->
	<!-- 	<section class="banner full">
				<article>
					<img src="/resources/images/home/night.jpg" alt="" />
					<div class="inner">
						
					</div>
				</article>
				<article>
					<img src="/resources/images/home/market.jpg" alt="" />
					<div class="inner">
						<header>
							
							<h2>Magna etiam</h2>
						</header>
					</div>
				</article>
				<article>
					<img src="/resources/images/home/market2.jpg"  alt="" />
					<div class="inner">
						<header>
							
						</header>
					</div>
				</article>
				<article>
					<img src="/resources/images/home/ranking.jpg"  alt="" />
					<div class="inner">
						<header>
							
						</header>
					</div>
				</article>
				<article>
					<img src="/resources/images/slide05.jpg"  alt="" />
					<div class="inner">
						<header>
							<p>Ipsum dolor sed magna veroeros lorem ipsum</p>
							<h2>Lorem adipiscing</h2>
						</header>
					</div>
				</article>
			</section> -->

	<!-- 푸드트럭리스트 -->
	<section id="one" class="wrapper style2">

		<div class="inner">
			<ul class="categoryList">
				<li class="category1"><span>Food</span></li>
				<li class="category1"><span>Beverage</span></li>
				<li class="category1"><span>Dessert</span></li>
				<li class="category1"><span>Drink</span></li>
			</ul>
			<div class="grid-style">

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/kimchi.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>maecenas sapien feugiat ex purus</p>
								<h2>영업중</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>
				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>

				<div>
					<div class="box">
						<div class="image fit">
							<img src="resources/images/foodtruck/steakout.jpg" alt="" />
						</div>
						<div class="content">
							<header class="align-center">
								<p>mattis elementum sapien pretium tellus</p>
								<h2>퇴근</h2>
							</header>
							<p>Cras aliquet urna ut sapien tincidunt, quis malesuada elit
								facilisis. Vestibulum sit amet tortor velit. Nam elementum nibh
								a libero pharetra elementum. Maecenas feugiat ex purus, quis
								volutpat lacus placerat malesuada.</p>
							<footer class="align-center">
								<a href="/view" class="button alt">Learn More</a>
							</footer>
						</div>
					</div>
				</div>



			</div>
		</div>
		<!--@@@검색@@@  -->
		<div class="search1">
			<div class="row uniform" id="selectbox">
				<div class="3u 12u$(small)">
					<div class="select-wrapper">
						<select name="type" id="category">
							<option value="n"
								<c:out value="${cri.type == 'n' ? 'selected' : '' }"></c:out>>--category--</option>
							<option value="t"
								<c:out value="${cri.type eq 't' ? 'selected' : '' }"/>>title</option>
							<option value="c"
								<c:out value="${cri.type eq 'c' ? 'selected' : '' }"/>>content</option>
							<option value="w"
								<c:out value="${cri.type eq 'w' ? 'selected' : '' }"/>>writer</option>
							<option value="tc"
								<c:out value="${cri.type eq 'tc' ? 'selected' : '' }"/>>title+content</option>
							<option value="tcw"
								<c:out value="${cri.type eq 'tcw' ? 'selected' : '' }"/>>title+content+writer</option>
						</select>
					</div>
				</div>

				<div class="6u 12u$(small)">
					<input type="text" name="keyword" id="query" value="${cri.keyword}"
						placeholder="search" />
				</div>

				<div class="3u 12u$(small)">
					<button id="search" value="Search"
						class="button special icon fa-search">Search</button>
				</div>
			</div>
		</div>
		<!-- 검색end -->
		<!-- 페이징start -->
		<div class="center">
			<div class="pagination">

				<a href=1>1</a> <a href=2>2</a> <a href=3>3</a> <a href=4>4</a> <a
					href=5>5</a> <a href=6>6</a> <a href=7>7</a> <a href=8>8</a> <a
					href=8>9</a> <a href=8>10</a> <a href=8>>></a>
			</div>
		</div>
		<!-- 페이징end -->
	</section>



	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
		</div>
		<div class="copyright">&copy; Untitled. All rights reserved.</div>
	</footer>
	<!-- Scripts -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery.scrollex.min.js"></script>
	<script src="/resources/js/skel.min.js"></script>
	<script src="/resources/js/util.js"></script>
	<script src="/resources/js/main.js"></script>




</body>
</html>