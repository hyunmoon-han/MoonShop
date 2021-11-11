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
        background-color: #f3efef;
        position: relative;
    }
    section{
        height: 88%;
        width:100%;
        display: grid;
        grid-template-columns:1fr 1fr 1fr 1fr 1fr;
        background-color: #f3efef; 
        font-size:18px;
    }
   #mainA,#mainB,#mainC,#mainD,#mainE{
  	position: relative;
  	padding-right: 10px;
  }
  
  #mainA_1{
  	position: absolute;
  	height: 50%;
  	width: 100%;
  	right:37px;
  	top:72px;
  }
  #mainB_1{
  	position: absolute;
  	height:55%;
  	width:102%;
  	right:15px;
  	top:110px;
  }
  #mainC_1{
  	height:65%;
  	width:107%;
  	position:absolute;
  	top:155px;
  }
  #mainD_1{
  	position: absolute;
  	height: 55%;
  	width: 102%;
  	left: 35px;
  	top: 110px;
  }
  #mainE_1{
  	position: absolute;
  	height: 50%;
  	width: 80%;
  	top:72px;
  	left:52px;
  	background: aliceblue;
  	
  }
 .pass:hover,#cur:hover{
 	transform:scale(1.2);
 	cursor: pointer;
 }
 #mainB_1:hover,#mainC_1:hover,#mainD_1:hover{
 	transform:scale(1.1);
 	z-index:12;
 	cursor: pointer;
 }
 #mainA_1:hover{
 	 z-index:12;
 	 transform: translateX( 120px );
 	 cursor: pointer;
 }
</style>
<body >
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
       			<svg  class="pass" style="width: 15%;height:10%;position: absolute;top: 70% ;left: 0;z-index:15" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-left" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M9.224 1.553a.5.5 0 0 1 .223.67L6.56 8l2.888 5.776a.5.5 0 1 1-.894.448l-3-6a.5.5 0 0 1 0-.448l3-6a.5.5 0 0 1 .67-.223z"/>
				</svg>
			 <div id="mainA_1">
			 	<div style="height: 12%;background: white;position: relative;">
			 		<div style="width: 11%;height: 75%;background: black;border-radius: 50%;position: absolute;left: 5%;top:12%;"></div>
      				<div><span style="position: absolute;left: 18%;top:15%;font-size: 20px;">H.moon</span><br><span style="position: absolute;left: 30%;top:62%;font-size: 13px;">South Korean jeju</span></div>
      				<svg style="width: 8%;height:50%;position: absolute;right: 12px;top:30%;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
					  <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
					</svg>
       				<svg style="width: 9%;height:12%;position: absolute;right: 12px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
					  <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
					</svg>
       			</div>
       			<img id="mainA_V" alt="3" src="./resources/s7.jpg" style ="width: 100%;height: 92%">
				
			</div>
       </div>
     <div id="mainB" >2
       		<div id="mainB_1" >
       		 <c:forEach items="${boardList}" var="boardList">
	     		<c:if test="${boardList.sbbs_id eq 2}">
				 <div style="height: 12%;background: white;position: relative;">
					 <div style="width: 11%;height: 75%;background: black;border-radius: 50%;position: absolute;left: 5%;top:12%;"></div>
      				<div><span style="position: absolute;left: 18%;top:15%;font-size: 20px;">${boardList.writer}</span><br><span style="position: absolute;left: 30%;top:62%;font-size: 13px;">${boardList.address }</span></div>
      				<svg style="width: 8%;height:50%;position: absolute;right: 12px;top:30%;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
					  <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
					</svg>
       				<svg style="width: 9%;height:12%;position: absolute;right: 12px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
					  <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
					</svg>
       			</div>
       			<img id="mainB_V" alt="${boardList.sbbs_id}" src="./resources/${boardList.img_1}" style ="width: 100%;height: 92%" title="${boardList.sbbs_id}">
				</c:if>
	    	  </c:forEach>
			</div>
       </div>
     <div id="mainC">3
	     <div id="mainC_1">
	     <c:forEach items="${boardList}" var="boardList">
	     	<c:if test="${boardList.sbbs_id eq 1}">
	     
      			<div style="height: 12%;background: white;position: relative;">
      				<div style="width: 11%;height: 75%;background: black;border-radius: 50%;position: absolute;left: 5%;top:12%;"></div>
      				<div><span style="position: absolute;left: 18%;top:15%;font-size: 20px;">${boardList.writer}</span><br><span style="position: absolute;left: 30%;top:62%;font-size: 13px;">${boardList.address }</span></div>
      				<svg style="width: 8%;height:50%;position: absolute;right: 12px;top:30%;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
					  <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
					</svg>
					
      			</div>
      			<img id="mainC_V" alt="${boardList.sbbs_id}" src="./resources/${boardList.img_1}" style ="width: 100%;height: 92%" title="${boardList.sbbs_id}">
    		</c:if>
    	  </c:forEach>
    	</div>
    </div>
     <div id="mainD">4
       		<div id="mainD_1">
       			<div style="height: 12%;background: white;position: relative;">
       				<div style="width: 11%;height: 75%;background: black;border-radius: 50%;position: absolute;left: 5%;top:12%;"></div>
      				<div><span style="position: absolute;left: 18%;top:15%;font-size: 20px;">H.moon</span><br><span style="position: absolute;left: 30%;top:62%;font-size: 13px;">South Korean jeju</span></div>
      				<svg style="width: 8%;height:50%;position: absolute;right: 12px;top:30%;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
					  <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
					</svg>
       				<svg style="width: 9%;height:12%;position: absolute;right: 12px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
					  <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
					</svg> 
       			</div>
       			<img id="mainD_V" alt="4" src="" style ="width: 100%;height: 92%">
       		</div>
       </div>
    <div id="mainE">5
       		<svg class="pass" style="width: 15%;height:10%;position: absolute;right:5;top:70%;z-index:15 " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
			</svg>
       		<div id="mainE_1">
       			<div style="height: 12%;background: white;">
       				...
       			</div>
       			<div style="height: 92%;position: relative;">
       				<svg id="cur" style="width:35%; height: 35%;position: absolute;left:35%;top:27%" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
					  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
					  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
					</svg> 
       			</div>
       		</div>
       </div> 
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		
	})
	.on("click","#mainC_V,#mainB_V,#mainA_V,#mainD_V",function(){
		sbbs_id=$(this).attr("alt");
		location.href="/app/shareView/"+sbbs_id+"";
		//console.log($(this).attr("alt"));
	})
	.on("click","#cur",function(){
		location.href="/app/shareInsert";
	})
</script>
</html>