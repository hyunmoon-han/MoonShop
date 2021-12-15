<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!--bootstrap css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <!--jquery-->    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" 
	crossorigin="anonymous"></script>
<title>Main</title>
</head>
	<style>
		html,body{
			height: 100%;
			width: 100%;
			margin: 0;
		}
		header{
			background: blanchedalmond;
			height: 15%;
			width: 100%;
		}
		section{
			background: blanchedalmond;
			height: 75%;
			width: 100%;
		}
		footer{
			background: blanchedalmond;
			height: 10%;
			width: 100%;
		}
		ul li{
			float: right;
			margin-right: 38px;
		}
		ul li a{
			color:#766200;
			font-size:22px;
			text-decoration-line: blink;
		}
	</style>
	
	
<body>
<header style="position: relative;">
	<div style="background-color: #fff8ed; width: 120px;height: 100%;position: relative; left: 12%; border-radius: 70px">
		 <span style="text-align: center;position: absolute; left: 14%; top: 15px;font-size: 40px">1854<br>
		<span style="font-size: 28px;position: absolute;top: 28px;left: 20px;">Shop</span></span>
	</div>
	<div style="position: absolute;right: 1%;top:62%;font-size: 20px;">
		<ul style="list-style: none">
			<li style="font-size: 15px;">${userid}님 환영합니다.</li>
			<li><a href="/app/board_list">Review</a></li>
			<li><a href="/app/board_list">Q&A</a></li>
			<li><a href="/app/sList">Album</a></li>
			<li><a href="/app/coffee">Coffee</a></li>
			
		</ul>
	</div>
	<div style="position:absolute;left: 23%;top:62%;width: 22%">
		<svg id="search" style="width: 20px;height: 20px " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
		  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
		</svg>
		<input type="type" style="border:none;border-bottom:solid 1px; background:blanchedalmond;width:58%;outline: none;font-size:15px" placeholder="Search">
	</div>
</header>

<section>
	<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel" style="width: 96%;height: 95%;background:whitesmoke;margin-left:2%;">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner" style="height: 100%;width: 100%;">
	    <div class="carousel-item active" data-bs-interval="10000" style="height: 100%;width: 100%;">
	      <img src="https://t1.daumcdn.net/cfile/tistory/99B7BD3A5DE9C6A808?original" class="d-block w-100" alt="" style="height: 100%;width: 100%; ">
	      <div class="carousel-caption d-none d-md-block">
	        <h5>Happy Christmas~</h5>
	        <p>I wish you all a Merry Christmas.</p>
	      </div>
	    </div>
	    <div class="carousel-item" data-bs-interval="2000" style="height: 100%;width: 100%;">
	      <img src="https://data.1freewallpapers.com/detail/clouds-at-beach.jpg" class="d-block w-100" alt="..." style="height: 100%;width: 100%;">
	      <div class="carousel-caption d-none d-md-block">
	        <h5>Beautiful beach.</h5>
	        <p>I want to go play someday while walking on the beautiful beach.</p>
	      </div>
	    </div>
	    <div class="carousel-item" style="height: 100%;width: 100%;">
	    
	      <img src="https://data.1freewallpapers.com/detail/ready-for-christmas.jpg" class="d-block w-100" alt="..." style="height: 100%;width: 100%;">
	      <div class="carousel-caption d-none d-md-block">
	        <h5>Snowy Town</h5>
	        <p>My village where the beautiful first snow fell.</p>
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
</section>

<footer style="position: relative;">
	<div style="font-size: 15px;">
		<span>주소: 충청남도 천안시 서북구 두정동</span>
	</div>
	<div style="position: absolute;font-size: 22px;left:48%;top: 20%;">
		<span>Moon</span>
	</div>
</footer>
</body>
</html>