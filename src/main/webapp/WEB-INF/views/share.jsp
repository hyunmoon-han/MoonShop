<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--bootstrap css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <!--jquery-->    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <!--구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300&display=swap" rel="stylesheet">
    <title>Moon</title>
</head>
<style>
    html,body{
        width:100%;
        height: 100%;
        font-family: 'Josefin Sans', sans-serif;
        font-size:30px;
    }
    header{
        width: 100%;
        height: 12%;
        background-color: #d3c9c9;
        position: relative;
    }
    section{
        height: 88%;
        display: grid;
        grid-template-columns:1fr 1fr 1fr 1fr;
        background-color: #d3c9c9; 
    }
  #mainA,#mainB,#mainC,#mainD{
  	position: relative;
  }
  #mainA_1{
  	width:370px;
  	height:380px;
  	background-color: blue;
  	position: absolute;
  	left: -150px;
  	top:128px;
  }
  #mainB_1{
  	width: 370px;
  	height: 380px;
  	background-color:black ;
  	position: absolute;
  	left: -159px;
  	top:9px;
  	z-index:5;
  }
  #mainB_2{
  	width: 370px;
  	height: 380px;
  	background-color: red;
  	position: absolute;
  	right: -192px;
  	top:170px;
  	z-index:10;
  }
  #mainC_1{
  	width: 370px;
  	height: 380px;
  	background-color: gray;
  	position: absolute;
  	left: 120px;
  	top:8px;
  	z-index:5;
  }
  #mainD_1{
  	width: 250px;
  	height: 380px;
  	background-color: lime;
  	position: absolute;
  	right:0;
  	top:115px;
  }
 #cur:hover{
 	transform:scale(1.8);
 }
 .pass:hover,#mainB_2:hover,#mainB_1:hover,#mainD_1:hover{
 	transform:scale(1.1);
 	z-index:12;
 }
 #mainA_1:hover{
 	transform:scale(1.1);
 	z-index:12;
 	 transform: translateX( 200px );
 }
</style>
<body>
    <header >
    	<div style="background-color: #fff8ed; width: 120px;height: 100%;position: relative; left: 2%; border-radius: 70px">
			 <span style="text-align: center;position: absolute; left: 14%; top: 15px;font-size: 40px">1854<br>
			<span style="font-size: 28px;position: absolute;top: 28px;left: 20px;">Shop</span></span>
		</div>
		<input id="logout"type="button" value="로그아웃" style="float: right;position: absolute;right: 10px;top: 20px;width: 90px;height: 25px;font-size: 15px;">
		<div style="position: absolute;position: absolute;top: 50px;font-size: 15px;right: 175px;">
			 <% 
				String userid=(String)session.getAttribute("userid");
				out.println(userid+"님 환영합니다.");
			%>
		</div>
    </header>
    <section>
       <div id="mainA" >1
       			<svg  class="pass" style="width: 17%;height:10%;position: absolute;top: 50% ;left: 0;z-index:15" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-left" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M9.224 1.553a.5.5 0 0 1 .223.67L6.56 8l2.888 5.776a.5.5 0 1 1-.894.448l-3-6a.5.5 0 0 1 0-.448l3-6a.5.5 0 0 1 .67-.223z"/>
				</svg>
			 <div id="mainA_1">
			 	<div style="height: 10%;background: white;">
       				이름 등등...
       			</div>
       			<img alt="" src="./resources/IU2.jpg" style ="width: 100%;height: 90%">
				
			</div>
       </div>
       <div id="mainB" >2
       		<div id="mainB_1" >
				 <div style="height: 10%;background: white;">
       				이름 등등...
       			</div>
       			<img alt="" src="./resources/IU3.jpg" style ="width: 100%;height: 90%">
			</div>
       		<div id="mainB_2">
       			<div style="height: 10%;background: white;">
       				<p style="font-size:12px">H.moon<br>South KOREA</p>
       			</div>
       			<img alt="" src="./resources/IU.jpg" style ="width: 100%;height: 90%">
       		</div>
       </div>
       <div id="mainC" >3
       		<div id="mainC_1">
       			<div style="height: 10%;background: white;">
       				H.moon <br>South Korea
       			</div>
       				<svg id="cur" style="width:35%; height: 35%;position: absolute;left:35%;top:30%" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
					  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
					  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
					</svg>
       			
       		</div>
       </div>
       <div id="mainD">
       		<svg class="pass" style="width: 20%;height:10%;position: absolute;right:0;top:50%;z-index:15 " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
				</svg>
       		<div id="mainD_1">
       			<div style="height: 10%;background: white;">
       				이름 등등...
       			</div>
       			
       		</div>
       </div>
    </section>	
</body>
<script>
	$(document)
	.ready(function(){
		
	})
</script>
</html>