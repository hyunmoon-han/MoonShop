<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        background-color: blanchedalmond;
    }
    section{
        height: 88%;
        display: grid;
        grid-template-columns: 0.7fr 7fr;
        background-color: rgba(144, 88, 88, 0.319); 
    }
    ul li{
        list-style-type: none;
        text-align: center;
    }
    ul {
    	padding-left: 0px;
    }
    #sub{
        background-color: rgb(214, 214, 143);
        width: 100%;
        height: 100%;
    }
    #nav{
        background-color: khaki;
    }
    
    #main{
        height: 100%;
        background-color: white;
    }
    #cap{
    	width: 30%;
    	height: 5%;
    	margin: 0 auto;
    }
    .page-link {
     padding: 0rem 0rem;
	}
	#bbs_ist{
	    display: block;
	    width: 111px;
	    height: 28px;
	    line-height: 28px;
	    background: #006633;
	    font-size: 12px;
	    color: #fff;
	    text-align: center;
	    border-radius: 5px;
	    margin:0 auto;
	}
	#bbs_Lst{
	    width: 90px;
	    height: 28px;
	    line-height: 28px;
	    background: #f13737ba;
	    font-size: 12px;
	    color: #fff;
	    text-align: center;
	    border-radius: 5px;	
	    float: right;
	    /* position: relative;
	    top: -32px; */
	}
</style>
<body>
    <header>
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
        <div id="sub" class="">
            <div id="nav">
                <ul>
                    <li><a href="/app/coffee">Coffee</a></li>
                    <li><a href="/app/sList">Album</a></li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                    <li>7</li>
                    <li>8</li>
                    <li>9</li>
                    <li>10</li>
                </ul>
            </div>
            <div>
            	<ul>
	                <li>notice</li>
	                <li> Q & A</li>
	                <li>Review</li>
	                <li style="text-decoration-line: underline;">search</li>
            	</ul>
            </div>
        </div>
        <div id="main" style="font-size:15px">
            <h3 style="text-align: center; background-color: lightgreen;">게시물 작성</h3>
            <div class="container">
	           <table  style="padding-top:50px" align = center width=95% border=1 cellpadding=2 >
                	<tr>
                		<td height=20 align= center bgcolor=#ccc colspan="4"><font color=white> 글쓰기</font></td>
               		</tr>
                	<tr>
               			<td bgcolor=white>
               			<form id="from_Ist" action="/app/board_Save" method="post" enctype="multipart/form-data">
               				<table class = "table2" style="width:90%">
	                     	<tr>
		                        <td style="width: 130px">작성자</td>
		                        <td><input id="userN" class="" type = text name = writer size=20 readonly="readonly" value="${userid}"> </td>
	                     	</tr>
		                     <tr>
		                        <td>제목</td>
		                        <td><input id="title" class="form-control" type = text name = title size=70 style="font-size: 17px;padding: 10px 15px;" placeholder="제목을 입력하세요."></td>
		                     </tr>
	                        <tr>
		                        <td>내용</td>
		                        <td><textarea id="content"  class="form-control" name = content cols="50" rows="5"  placeholder="내용을 입력하세요."
		                        style="font-size: 17px;height: 330px;white-space: pre-line;padding: 10px 15px;"></textarea></td>
	                        </tr>
	                        <tr>
	                        	<td>업로드</td>
	                        	<td><input type="file" name="img_log" id="img_log"></td>
	                        </tr>
               			</form>
	               			<tr>
	               				<td colspan="4"></td>
	               			<tr>
		                	<tr>
			                	<td style="text-align: center;" colspan="4">
			                		<input id="bbs_ist" type="button" value="등록" >
				             		<input id="bbs_Lst" type="button" value="목록" >
				             	</td>
			             	</tr>
	             
        		</table>
             </div ><br><br>
             
            
        </div>
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		
	})
	.on("click","#bbs_ist",function(){
		//location.href="/app/board_list";
		userN=$("#userN").val();
		title=$("#title").val();
		content=$("#content").val();
		passcode=$("#passcode").val();
		//console.log(userN,title,content,passcode);
		if(userN==''|| title==''||content==''||passcode==''){
			alert("빈 정보가 존재합니다.입력해주세요!");
			return false;
		}
		check=confirm("게시물을 등록하시겠습니까?");
		if(check){
			$("#from_Ist").submit();
			alter("게시물이 등록 되었습니다.");
		}else {
			alter("게시물 등록이 되지않았습니다. 잠시 후 이용해주세요.")
			return false;
		}
		
	})
	.on("click","#bbs_Lst",function(){
		location.href="/app/board_list";
	})
	.on("click","#logout",function(){
		location.replace("/app/logout");
	})
	
</script>
</html>