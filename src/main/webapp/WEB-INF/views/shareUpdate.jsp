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
    <!-- 부트스트랩 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" 
crossorigin="anonymous"></script>
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
  	}
  	.pass:hover{
  		transform:scale(1.2);
	 	cursor: pointer;
	 }
	#imgD_1:hover,#imgD_2:hover,#imgD_3:hover,#imgD_4:hover,#imgD_5:hover{
		cursor: pointer;
		transform:scale(1.1);
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
     <div id="mainA" >
     	<label for="img_1" class="form-label" style="margin: 0;margin-left:35%">img_1</label>
     	<svg id="check_1" style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
		  <path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/>
		</svg>
	     <div style="width: 95%;height:50%;background-color: white;">
	     	<img id="i1" alt="" src="../resources/${boardList.img_1}" height="100%" width="100%" style="opacity: 0.4;" >
	     </div>
	     <svg title="1" id="imgD_1"style="width: 20px;height: 25px;margin-left:40% " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
		  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
		  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
		</svg>
		<svg id="imgC_1"style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" " stxmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
		</svg>
 	     <div style="height: 6%; width: 500%;position: relative;">
		     <form action="/app/shareSava" method="post" enctype="multipart/form-data">
		     	<input class="form-control form-control-sm" id="img_1" name="img_1" type="file" style="height: 32px;font-size:12px;padding:8px;width: 15%;margin-left:2%;" value="${boardList.img_2}">
		     	<input class="form-control form-control-sm" id="img_2" name="img_2" type="file" style="height: 32px;font-size:12px;padding:8px;width: 15%;margin-left:2%;position: absolute;top: 1%;left: 20%">
		     	<input class="form-control form-control-sm" id="img_3" name="img_3" type="file" style="height: 32px;font-size:12px;padding:8px;width: 15%;margin-left:2%;position: absolute;top: 1%;left: 40%">
		     	<input class="form-control form-control-sm" id="img_4" name="img_4" type="file" style="height: 32px;font-size:12px;padding:8px;width: 15%;margin-left:2%;position: absolute;top: 1%;left: 60%">
		     	<input class="form-control form-control-sm" id="img_5" name="img_5" type="file" style="height: 32px;font-size:12px;padding:8px;width: 15%;margin-left:2%;position: absolute;top: 1%;left: 80%">
	     	</form>
	     </div>
     	<input type="button" value="list" id="list">
     	<input type="text" id="aa" value="${boardList.img_2}">
      </div>
     <div id="mainB" >
     	<label for="img_2" class="form-label" style="margin: 0;margin-left:35%">img_2</label>
     	<svg id="check_2" style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
		  <path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/>
		</svg>
     	<div style="width: 95%;height:50%;background-color: white;">
     		<img id="i2" alt="" src="../resources/${boardList.img_2}" height="100%" width="100%" style="opacity: 0.4;">
   		</div>
   		<svg id="imgC_2"style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" " stxmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
		</svg>
   	 	<svg title="2" id="imgD_2"style="width: 20px;height: 25px;margin-left:40% " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
		  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
		  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
		</svg>	
     </div>
     <div id="mainC">
     	<label for="img_3" class="form-label" style="margin: 0;margin-left:35%">img_3</label>
	     <svg id="check_3" style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
		  <path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/>
		</svg>
	     <div style="width: 95%;height:50%;background-color: white;">
	     	<img id="i3" alt="" src="../resources/${boardList.img_3}" style="width: 100%;height: 100%;opacity: 0.4;">
		</div>
		<svg id="imgC_3"style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" " stxmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
		</svg>
		<svg title="3" id="imgD_3"style="width: 20px;height: 25px;margin-left:40% " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
		  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
		  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
		</svg>	
     	<form action="/app/shareSava" method="post" enctype="multipart/form-data">
	     	<div id="mainC_2" style="width: 200%;position: absolute;top:67%;left:-50%">
	     		<div class="form-floating">
				  <input type="text" class="form-control" name="content" id="content" style="height: 90px;font-size: 18px;" value="${boardList.content}">
				  <label for="content">#content</label>
				</div>
				<br>
				<div class="form-floating">
				  <input type="text" class="form-control" name="address" id="address" style="height: 50px;font-size: 18px;" value="${boardList.address}">
				  <label for="address">#지역</label>
				</div>
				<input type="hidden" name="writer" id="writer" value="${boardList.writer}">
	     		<input type="hidden" name="sbbs_id" id="sbbs_id" value="${boardList.sbbs_id }">
	     	</div>
     	</form>
    </div>
     <div id="mainD">
     	<label for="img_4" class="form-label" style="margin: 0;margin-left:35%">img_4</label>
	     <svg id="check_4" style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
		  <path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/>
		</svg>
	     <div style="width: 95%;height:50%;background-color: white;">
	     	<img id="i4" alt="" src="../resources/${boardList.img_4}" height="100%" width="100%" style="opacity: 0.4;">
		</div>
		<svg id="imgC_4"style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" " stxmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
		</svg>
		<svg title="4" id="imgD_4"style="width: 20px;height: 25px;margin-left:40% " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
		  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
		  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
		</svg>	
     </div>
    <div id="mainE">
    	<label for="img_5" class="form-label" style="margin: 0;margin-left:35%">img_5</label>
	    <svg id="check_5" style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
		  <path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/>
		</svg>
	    <div style="width: 95%;height:50%;background-color: white;">
	    	<img id="i5" alt="" src="../resources/${boardList.img_5}" height="100%" width="100%" style="opacity: 0.4;">
	     </div>
	     <svg id="imgC_5"style="width: 22%;height: 10%;color: green;position: absolute;left:34%;top:25%;z-index: 2;" " stxmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
		</svg>
	     <svg title="5" id="imgD_5"style="width: 20px;height: 25px;margin-left:40% " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
		  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
		  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
		</svg>	
    	 	<br><br><br>
     		created:<input type="text" disabled="disabled" value="${boardList.created }"><br>
     		heart:<input type="text" disabled="disabled" value="${boardList.heart }"><br>
     		<input type="button" value="수정" id="sUp">
     		<input type="button" value="삭제" id="sDl">  
     </div>  		
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		$("#imgC_1,#imgC_2,#imgC_3,#imgC_4,#imgC_5").hide();
	})
	.on("click","#list",function(){
		location.href="/app/sList";
	})
	.on("click","#imgD_1,#imgD_2,#imgD_3,#imgD_4,#imgD_5",function(){
		a=confirm("업로드한 사진을 삭제하시겠습니까?");
		c=$(this).attr("title");
		console.log(c);
		 if(a){
			for(b=1;b<=5;b++){
				if(b==c){
					$("#check_"+b+"").hide();
					$("#imgC_"+b+"").show();
					$("#i"+c+"").hide();
					return false;
				}
			}
		 }		 
	}) 
	.on("click","#sDl",function(){
		check=confirm("이 게시물을 정말 삭제하시겠습니까?");
		if(check){
			$("form").attr("action","/app/sBoardDel");
			$("form").attr("method","post")
			$("form").submit();
		}else{
			return false;
		}
	})
	.on("click","#logout",function(){
		location.replace("/app/logout");
	})
</script>
</html>