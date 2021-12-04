<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--bootstrap css-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<!-- 제이쿼리 -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>회원가입</title>

<style>
body,html{
	margin: auto; /* 화면 축소시 스크롤 방지 */
	background-image: url("") ;
	background-repeat:no-repeat; 
    background-size:cover;
    height: 100%;
    width:100%;
    background-position: center center; 
}

#content{
	position: absolute; left: 50%; top: 50%; 
  	transform: translate(-50%, -50%); text-align: center;
 	 /* 이하 꾸밈 설정 */
  	background: #000000 ; 
    min-width: 310px;
    padding-bottom: 50px;
    opacity: 0.7;
    color:white;
    width: 30%;
    
}
</style>
</head>
<body>
<div style="width: 300px;height: 300px;background-repeat : no-repeat;background-size : cover;">
</div>
<div style="width: 500px;height: 500px;background-repeat : no-repeat;
        background-size : cover;">
</div>
 	<div id="content">
		<div style=" left: 42%;
		    background: red;
		    height: 85px;
		    width: 85px;
		    position: relative;
		    border-radius: 80px;
		    position: absolute;
		    top: -60px;">
		<svg style="width: 57px;
		    height: 57px;
		    position: absolute;
		    top: 14px;
		    left: 14px;
		    background: red;
		    border-radius: 50px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
		  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
		</svg>
		</div>
		<h1 style="padding-top: 30px;font-size: 25px">회원가입</h1>
		<br>
		<form id="" action="/app/member" method="post">
				<label for="gender" class="form-label">성별</label>
				    <select id="gender" class="" name="gender">
				      <option selected>남자</option>
				      <option>여자</option>
				    </select>
			<div class="row mb-3" >
			    <label for="name" class="col-sm-2 col-form-label">이름</label>
			    <div class="col-sm-10" style="width: 50%;margin-left:10%">
			      <input type="text" class="form-control" id="name" name="name">
			    </div>
		  </div>
		  <div class="row mb-3">
			    <label for="userid" class="col-sm-2 col-form-label">ID</label>
			    <div class="col-sm-10" style="width: 50%;margin-left:10%">
			      <input type="text" class="form-control" id="userid" name="userid">
			    </div>
		  </div>
				<div class="row mb-3">
			    <label for="email" class="col-sm-2 col-form-label">Email</label>
			    <div class="col-sm-10" style="width: 50%;margin-left:10%">
			      <input type="email" class="form-control" id="email" name="email">
			    </div>
		  </div>
		  
		  <div class="row mb-3">
			    <label for="mobile" class="col-sm-2 col-form-label">mobile</label>
			    <div class="col-sm-10"  style="width: 50%;margin-left:10%">
			      <input type="text" class="form-control" id="mobile" name="mobile">
			    </div>
		  </div>
		  
		  <div class="row mb-3">
			    <label for="passcode" class="col-sm-2 col-form-label">Password</label>
			    <div class="col-sm-10"  style="width: 50%;margin-left:10%">
			      <input type="password" class="form-control" id="passcode" name="passcode">
			    </div>
		  </div>
		  
		  <div class="row mb-3">
			    <label for="passcode2" class="col-sm-2 col-form-label">P"check</label>
			    <div class="col-sm-10"  style="width: 50%;margin-left:10%">
			      <input type="password" class="form-control" id="passcode2">
			    </div>
		  </div>
		</form>
		  <input id="btnInt" type="submit" value="입력">
		  <input id="btnCen" type="button" value="취소">
 
	</div> 
</body>
<script>
$(document)
.ready(function(){
	
})
.on("click","#btnInt",function(){
	//비밀번호 확인 코드
	if($("#passcode").val()!=$("#passcode2").val()){
		alert("비빌번호 값이 같지 않습니다.");
		$("#passcode").val("");
		$("#passcode2").val("");
		return false;
	}
	else if($("#name").val()==""||$("#userid").val()==""||$("#email").val()==""||$("#passcode").val()==""){
			alert("입력값중 빈 값이 존재합니다.입력해주세요.");
			return false;
	}else{
		$('form').submit();
		alert("회원가입에 성공했습니다.");
	}
	
})
.on("click","#btnCen",function(){
	location.href="/app/login";
})

</script>
</html>