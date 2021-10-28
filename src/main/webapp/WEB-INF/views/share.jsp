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
  
  
</style>
<body>
    <header >
    	<div style="background-color: #fff8ed; width: 120px;height: 100%;position: relative; left: 12%; border-radius: 70px">
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
       <div id="mainA" style="position: relative;">1
			 <div id="mainA_1" style="width: 370px;height: 350px;background-color: blue;position: absolute;left: -150px;top:128px">
				 사진
			</div>
       </div>
       <div id="mainB" style="position: relative;">2
       		<div id="mainA_2" style="width: 370px;height: 350px;background-color:black ; position: absolute;left: -159px;top:9px">
				 사진
			</div>
       		<div id="mainB_1" style="width: 370px;height: 350px;background-color: red;position: absolute;right: -192px;top:197px">
       			사진
       		</div>
       </div>
       <div id="mainC" style="position: relative;">3
       		<div id="mainB_1" style="width: 370px;height: 350px;background-color: gray;position: absolute;left: 120px;top:8px">
       			사진
       		</div>
       </div>
       <div id="mainD" style="position: relative;">4
       		<div id="mainB_1" style="width: 250px;height: 350px;background-color: lime;position: absolute;right:0;top:115px">
       			사진
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