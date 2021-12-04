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
     <input type="button" value="list" id="list">
     <input type="button" value="완료" id="subM">
     <input type="button" value="메뉴" id="menu">
       		<!-- <form action="/app/shareSava" method="post" enctype="multipart/form-data">
     			<div class="form-floating">
				  <textarea class="form-control" placeholder="content" name="content" id="content" style="height: 100px"></textarea>
				  <label for="content">content</label>
				</div>
	     		<div class="form-floating">
				  <textarea class="form-control" placeholder="지역" name="address" id="address" style="height: 100px"></textarea>
				  <label for="address">address</label>
				</div>
			  <label for="img_1" class="form-label">img_1</label>
			  <input class="form-control form-control-sm" id="img_1" name="img_1" type="file" style="height: 32px;font-size:12px;padding:8px;">
	     		<label for="img_2" class="form-label">img_2</label>
			  <input class="form-control form-control-sm" id="img_2" name="img_2" type="file" style="height: 32px;font-size:12px;padding:8px;">
	     		<label for="img_3" class="form-label">img_3</label>
			  <input class="form-control form-control-sm" id="img_3" name="img_3" type="file" style="height: 32px;font-size:12px;padding:8px;">
	     		<label for="img_4" class="form-label">img_4</label>
			  <input class="form-control form-control-sm" id="img_4" name="img_4" type="file" style="height: 32px;font-size:12px;padding:8px;">
	     		<label for="img_5" class="form-label">img_5</label>
			  <input class="form-control form-control-sm" id="img_5" name="img_5" type="file" style="height: 32px;font-size:12px;padding:8px;">
	     		
     		</form>	 -->
      </div>
     <div id="mainB" >2
     		<svg  class="pass" id="p1"  style="width: 15%;height:10%;position: absolute;top: 25% ;right: 30%;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-left" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M9.224 1.553a.5.5 0 0 1 .223.67L6.56 8l2.888 5.776a.5.5 0 1 1-.894.448l-3-6a.5.5 0 0 1 0-.448l3-6a.5.5 0 0 1 .67-.223z"/>
			</svg>	
       </div>
     <div id="mainC">3
     	<form action="/app/shareSave" method="post" enctype="multipart/form-data">
	     	<div id="mainC_1" style="width: 150%;height: 50%;background: white;position: absolute;left: -25%;">
		     	<div id="f1" style="text-align: center;margin-top: 20%">
			     	<label for="img_1" class="form-label">main_1</label>
			     	<br><br><br><br>
					<input class="form-control form-control-sm" id="img_1" name="img_1" type="file" style="height: 32px;font-size:12px;padding:8px;width: 80%;margin-left:10%;">
				</div>
				<div id="f2" style="text-align: center;margin-top: 20%">
			     	<label for="img_2" class="form-label">main_2</label>
			     	<br><br><br><br>
					<input class="form-control form-control-sm" id="img_2" name="img_2" type="file" style="height: 32px;font-size:12px;padding:8px;width: 80%;margin-left:10%;">
				</div>
				<div id="f3" style="text-align: center;margin-top: 20%">
			     	<label for="img_3" class="form-label">main_3</label>
			     	<br><br><br><br>
					<input class="form-control form-control-sm" id="img_3" name="img_3" type="file" style="height: 32px;font-size:12px;padding:8px;width: 80%;margin-left:10%;">
				</div>  
				<div id="f4" style="text-align: center;margin-top: 20%">
			     	<label for="img_4" class="form-label">main_4</label>
			     	<br><br><br><br>
					<input class="form-control form-control-sm" id="img_4" name="img_4" type="file" style="height: 32px;font-size:12px;padding:8px;width: 80%;margin-left:10%;">
				</div>  
				<div id="f5" style="text-align: center;margin-top: 20%">
			     	<label for="img_5" class="form-label">main_5</label>
			     	<br><br><br><br>
					<input class="form-control form-control-sm" id="img_5" name="img_5" type="file" style="height: 32px;font-size:12px;padding:8px;width: 80%;margin-left:10%;">
				</div>
	     	</div>
	     	<div id="mainC_2" style="width: 200%;position: absolute;top:62%;left:-50%">
	     		<div class="form-floating">
				  <input type="text" class="form-control" name="content" id="content" style="height: 90px;font-size: 18px;">
				  <label for="content">#content</label>
				</div>
				<br>
				<div class="form-floating">
				  <input type="text" class="form-control" name="address" id="address" style="height: 50px;font-size: 18px;">
				  <label for="address">#지역</label>
				</div>
				
				writer:<input type="text" value="${userid }" name="writer" id="writer">
	     	</div>
     	</form>
    </div>
     <div id="mainD">4
		    <svg class="pass" id="p2" style="width: 15%;height:10%;position: absolute;left:30%;top:25%;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
			</svg>
     </div>
    <div id="mainE">5
    	 sbbs_id:<input type="text"  disabled="disabled"><br>
		     <br>
     		created:<input type="text" disabled="disabled"><br>
     		heart:<input type="text" disabled="disabled"><br>
     </div>  		
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		$("#f2,#f3,#f4,#f5").hide();
	})
	.on("click","#list",function(){
		location.href="/app/sList";
	})
	.on("click","#p2",function(){
		if($("#f1").is(":visible")){
			$("#f1").hide();
			$("#f2").show();
		}else if($("#f2").is(":visible")){
			$("#f2").hide();
			$("#f3").show();
		}else if($("#f3").is(":visible")){
			$("#f3").hide();
			$("#f4").show();
		}else if($("#f4").is(":visible")){
			$("#f4").hide();
			$("#f5").show();
		}
	})
	.on("click","#p1",function(){
		if($("#f2").is(":visible")){
			$("#f2").hide();
			$("#f1").show();
		}else if($("#f3").is(":visible")){
			$("#f3").hide();
			$("#f2").show();
		}else if($("#f4").is(":visible")){
			$("#f4").hide();
			$("#f3").show();
		}else if($("#f5").is(":visible")){
			$("#f5").hide();
			$("#f4").show();
		} 
	})
	.on("click","#subM",function(){
		if($("#img_1").val()=='' ||$("#img_2").val()=='' ||$("#img_3").val()=='' ||$("#img_4").val()=='' ||$("#img_5").val()==''){
			alert("5개의 업로드 사진 중  빈 사진이 존재 합니다. 다시 확인해주세요.");
			return false;
		}
		if($("#content").val()==''){
			alert("내용이 비었습니다.내용을 입력하세요.");
			return false;
		}
		if($("#address").val()==''){
			alert("주소가 비었습니다. 주소를 입력하세요.");
			return false;
		}
		$('form').submit();
	})
	.on("click","#menu",function(){
		location.href="/app/menu";
	})
	.on("click","#logout",function(){
		location.replace("/app/logout");
})
</script>
</html>