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
  #mainA,#mainE{
  	background: #b4bdbd;
  }
  #mainB_1{
  	height:72%;
  	width:184%;
  }
  #talk,#heart1,#heart2:hover{
  	cursor: pointer;
  }
 a{
 	color:#8c80f3;
 	text-decoration: none;
 }
 .pass{
 	cursor: pointer;
 }
 
</style>
<body >
    <header >
    	<div style="background-color: #fff8ed; width: 120px;height: 100%;position: relative; left: 21%; border-radius: 70px">
			 <span style="text-align: center;position: absolute; left: 14%; top: 15px;font-size: 40px">1854<br>
			<span style="font-size: 28px;position: absolute;top: 28px;left: 20px;">Shop</span></span>
		</div>
		<div style="position:absolute;left: 45%;top:37%;width: 22%">
			<svg id="search" style="width: 20px;height: 20px "xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
			  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
			</svg>
			<input type="type" style="border:none;border-bottom:solid 1px; background:#f3efef;width:58%;outline: none;font-size:15px" placeholder="Search">
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
	     <div id="mainA" style="position: relative;">
     		<svg  class="pass" id="p1"  style="width: 15%;height:10%;position: absolute;top: 40% ;right: 0;z-index:15" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-left" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M9.224 1.553a.5.5 0 0 1 .223.67L6.56 8l2.888 5.776a.5.5 0 1 1-.894.448l-3-6a.5.5 0 0 1 0-.448l3-6a.5.5 0 0 1 .67-.223z"/>
			</svg>	
	     </div>
	       
	     <div id="mainB" >
	       	<div id="mainB_1">
      			<div style="height: 13%;background: white;position: relative;border-top-left-radius:10px;border-top-right-radius:10px; ">
      				<div style="width: 10%;height: 75%;background: black;border-radius: 50%;position: absolute;left: 5%;top:12%;"></div>
      				<div><span style="position: absolute;left: 18%;top:25%;font-size: 25px;">${boardView.writer}</span><br><span style="position: absolute;left: 25%;top:70%;font-size: 15px;">${boardView.address}</span></div>
      			</div>
      			<img id="img1" alt="" src="../resources/${boardView.img_1}" style ="width: 100%;height: 92%">
      			<img id="img2" alt="" src="../resources/${boardView.img_2}" style ="width: 100%;height: 92%">
      			<img id="img3" alt="" src="../resources/${boardView.img_3}" style ="width: 100%;height: 92%">
      			<img id="img4" alt="" src="../resources/${boardView.img_4}" style ="width: 100%;height: 92%">
      			<img id="img5" alt="" src="../resources/${boardView.img_5}" style ="width: 100%;height: 92%">
      			
      			<div style="background: white;height: 34%;position: relative;">
      				<div>
      					<svg id="heart1" style="width: 25px;height: 28px;margin-top:10px;margin-left:17px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
						  <path  d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
						</svg>
						<svg id="heart2" style="width: 25px;height: 28px;margin-top:10px;margin-left:17px;color:#f72e2e;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
						  <path  fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
						</svg> 
						<svg id="talk" style="width: 25px;height: 28px;margin-top:5px;margin-left:12px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
						  <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
						</svg>
						<svg style="width: 25px;height: 28px;margin-right:15px;margin-top:10px;float: right;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bookmark-heart" viewBox="0 0 16 16">
						  <path  fill-rule="evenodd" d="M8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z" style="color:red;"/>
						  <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
						</svg>
      				</div>	
					<div style="font-size: 15px;margin-top:10px;margin-left:10px">
						좋아요 15개
					</div>
					<div style="font-size: 17px;margin-left: 10px;margin-top:3px">
						<span style="padding-right:12px">${boardView.writer}</span><span id="content">${boardView.content}ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</span>
						<span id="contentH">${boardView.content}ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</span>
						<a id="l"href="#scrollspyHeading1">더보기</a>
						<h6 id="scrollspyHeading1">#제주도,#여행</h6>
					</div>
					<div style="margin-left:10px;margin-top:3px;font-size:15px">
						<a id="reY" href="#scrollspyHeading2">댓글 100개 모두 보기</a>
					</div>
					<div id="scrollspyHeading2">
						<table id="tbl1" style="background: antiquewhite;width:95%;margin-left:10px;height: 75px;font-size: 17px;">
							<tr style="font-size: 15px">
								<td rowspan="2" style="width:15%"><div style="width: 80%;height: 80%;background: black;border-radius: 50%;margin-left:5px"></div>
								</td>
								<td style="width:12%;padding-top: 8px;">H.moon</td>
								<td colspan="3" style="padding-top: 15px">떠나요 둘이서 모든걸 훌훌 버리고 제주도 안에 도시의 소음이 싫어요 </td>
								<td style="width:5%">1</td>
							</tr>
							<tr style="font-size: 13px">
								<td style="text-align: right;">2일 전</td>
								<td style="padding-left: 15px;width: 100px">좋아요 2개</td>
								<td>답글달기</td>
								<td>5</td>
								<td>
									<svg id="heartS1" style="width: 15px;height: 15px;margin-bottom:5px" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
									  <path  d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
									</svg>
									<svg id="heartS2" style="width: 15px;height: 15px;margin-bottom:5px;color:#f72e2e;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
									  <path  fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
									</svg> 
								</td>
							</tr>
						</table>
					</div>
					
      			</div>
    	</div>	
	     </div>
	       
	     <div id="mainC">	
	     </div>
	     <div id="mainD" style="position: relative;">
	     	<svg class="pass" id="p2" style="width: 15%;height:10%;position: absolute;left:-15%;top:40%;z-index:15 " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
			</svg>
	     </div>
	    <div id="mainE">5
	       		
	    </div> 
    </section>
</body>
<script>
$(document)
.ready(function(){
	$("#heart2").hide();
	$("#heartS2").hide();
	$("#scrollspyHeading1").hide();
	//$("#scrollspyHeading2").hide();
	$("#img2").hide();
	$("#img3").hide();
	$("#img4").hide();
	$("#img5").hide();
	if($("#content").text().length>15){
		$("#content").html($("#content").text().substr(0,15)+"....");
	}
	$("#contentH").hide();
})
.on("click","#heart1",function(){
	$(this).hide();
	$("#heart2").show();
	alert($("#content").text());
})
.on("click","#heart2",function(){
	$(this).hide();
	$("#heart1").show();
})
.on("click","#l",function(){
	//$("#scrollspyHeading1").show();
	 if($("#scrollspyHeading1").is(":visible")){
		$("#scrollspyHeading1").hide();
		$("#contentH").hide();
		$("#content").show();
		$(this).html("더보기");
	}else{
		$("#scrollspyHeading1").show();
		$("#content").hide();
		$("#contentH").show();
		$(this).html("줄이기");
	} 
})
.on("click","#reY",function(){		
	if($("#scrollspyHeading2").is(":visible")){
		$("#scrollspyHeading2").hide();
	}else{
		$("#scrollspyHeading2").show();
	} 
})
.on("click","#heartS1",function(){
	$(this).hide();
	$("#heartS2").show();
})
.on("click","#heartS2",function(){
	$(this).hide();
	$("#heartS1").show();
})
.on("click","#p2",function(){
	if($("#img1").is(":visible")){
		$("#img1").hide();
		$("#img2").show();
	}else if($("#img2").is(":visible")){
		$("#img2").hide();
		$("#img3").show();
	}else if($("#img3").is(":visible")){
		$("#img3").hide();
		$("#img4").show();
	}else if($("#img4").is(":visible")){
		$("#img4").hide();
		$("#img5").show();
	}
})
.on("click","#p1",function(){
	if($("#img2").is(":visible")){
		$("#img2").hide();
		$("#img1").show();
	}else if($("#img3").is(":visible")){
		$("#img3").hide();
		$("#img2").show();
	}else if($("#img4").is(":visible")){
		$("#img4").hide();
		$("#img3").show();
	}else if($("#img5").is(":visible")){
		$("#img5").hide();
		$("#img4").show();
	}  
	
})

</script>
</html>