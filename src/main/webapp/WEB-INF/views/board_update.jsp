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
        background-color: blanchedalmond; 
    }
    ul li{
        list-style-type: none;
        text-align: center;
        background: blanchedalmond;
        font-size: 27px;
    }
    ul {
    	padding-left: 0px;
    }
     a{
		color:#73a1e5;
		font-size:22px;
		text-decoration-line: blink;
	}
    #sub{
        background-color: blanchedalmond;
        width: 100%;
        height: 100%;
    }
    #nav{
        background-color: blanchedalmond;
    }
    
    #main{
        height: 100%;
        background-color: blanchedalmond;
    }
    #cap{
    	width: 30%;
    	height: 5%;
    	margin: 0 auto;
    }
    .page-link {
     padding: 0rem 0rem;
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
                    <li><a href="/app/coffee">Coffee</li>
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
            <h3 style="text-align: center; background-color: blanchedalmond;">게시물 수정</h3>
            <div class="container">
               <p style="margin: 0;padding-left:30px;font-size:18px">First: &nbsp;${board.created}&nbsp;&nbsp;&nbsp;&nbsp;Last:${board.updated}</p>
	           <table  style="padding-top:50px" align = center width=95% border=1 cellpadding=2 >
                	<tr>
                		<td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
               		</tr>
                	<tr>
               			<td>
               				<form id="from_Ut" action="/app/board_update" method="post">
               				<table class = "table2" style="width:90%">
	                     		<tr>
			                        <td style="width: 130px">작성자</td>
			                        <td><input class="" type = text name ="writer" size=20 value="${board.writer}" readonly="readonly" > </td>
		                     	</tr>
			                     <tr>
			                        <td>제목</td>
			                        <td><input id="tit" class="form-control" type = text name ="title" size=70 value="${board.title}" 
			                        
			                        style="font-size: 15px;padding-left: 7px" placeholder="제목을 입력하세요." ></td>
			                     </tr>
		                        <tr>
			                        <td>내용</td>
			                        <td><textarea  class="form-control" name ="content" cols="50" rows="5" 
			                        style="font-size: 17px;height: 280px;padding: 10px 15px;padding-left: 7px" placeholder="내용을 입력하세요.">${board.content}</textarea></td>
		                        </tr>
		                        <tr>
		                        	<td>이미지</td>
		                        	<td><c:if test="${board.img_loc  ne ''}">
		                        	<img alt="" src="/app/resources/${board.img_loc}" width="100px" height="100px"> 
		                        </c:if>
		                        <input type="file" value="${board.img_loc}">
		                        </td>
		                        </tr>
	                        </table>
	                        <input id="bbs_id" name="bbs_id" type="hidden" value="${board.bbs_id}">
	                        <div style="text-align: center;">
				             	<input id="update" type="button" value="등록" >
				             	<input id="bbs_Del" type="button" value="삭제">
				             	<input id="list" type="button" value="목록" >
				           	</div>  
	               			</form>
	                	</td>
                	</tr>
        		</table>
             </div >
             <br>
             
        </div>
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		
	})
	//게시물 업데이트 서밋
	.on("click","#update",function(){
		if($("#tit").val()==""){
			alert("제목을 입력하세요.");
			return false;
		}
		$("#from_Ut").submit();
	})
	//게시물 리스트 페이지이동
	.on("click","#list",function(){
		check=confirm("수정된 내용은 저장이 되지않습니다.목록으로 이동하시겠습니까?");
		if(check){
			location.href="/app/board_list";
		}else return false;
	})
	//로그아웃 페이지 이동
	.on("click","#logout",function(){
		location.replace("/app/logout");
	})
	//게시물 삭제
	.on("click","#bbs_Del",function(){
		check=confirm("정말로 삭제하시겠습니까?");
		if(check){
			$("#from_Ut").attr("action","/app/board_Del");
			$("#from_Ut").attr("method","post")
			$("#from_Ut").submit();
		}else{
			return false;
		}
		
	})
</script>
</html>