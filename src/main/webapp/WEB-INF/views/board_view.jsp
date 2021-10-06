<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">    

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
        grid-template-columns: 1fr 7fr;
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
</style>
<body>
    <header>
    	<div style="background-color: #fff8ed; width: 120px;height: 100%;position: relative; left: 12%; border-radius: 70px">
			 <span style="text-align: center;position: absolute; left: 14%; top: 15px;font-size: 40px">1854<br>
			<span style="font-size: 28px;position: absolute;top: 28px;left: 20px;">Shop</span></span>
		</div>
    </header>
    <section>
        <div id="sub" class="">
            <div id="nav">
                <ul>
                    <li>Coffee</li>
                    <li>2</li>
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
            <h3 style="text-align: center; background-color: lightgreen;">게시물 보기</h3>
             <div class="container">
	           <table  style="padding-top:50px" align = center width=95% border=1 cellpadding=2 >
                	<tr>
                		<td height=20 align= center bgcolor=#ccc><font color=white> 보기</font><input type="text" style="float:left;border: none;" value="2021-10-20"></td>
               		</tr>
                	<tr>
               			<td bgcolor=white>
               				<table class = "table2" style="width: 90%">
	                     	<tr>
		                        <td style="width: 130px">작성자</td>
		                        <td><input id="writer" class="" type = text name = writer size=20 value="${board.writer}" readonly="readonly"></td>
	                     	</tr>
		                     <tr>
		                        <td>제목</td>
		                        <td><input class="form-control" type = text name = title size=10 value="${board.title}" readonly="readonly"
		                        style="font-size:17px;padding: 10px 15px;height: 50px"></td> 
		                        
		                     </tr>
	                        <tr>
		                        <td>내용</td>
		                        <td><textarea  class="form-control" name = content cols="50" rows="5" readonly="readonly"
		                        style="padding: 10px 15px;font-size: 17px;height: 300px">${board.content}</textarea></td>
	                        </tr>
	                        <tr>
		                        <td>등록일</td>
		                        <td><input type="text" class="" name ="created"  value="${board.created}"readonly="readonly"></input></td>
	                        </tr>
	                        <tr>
		                        <td>수정일</td>
		                        <td><input type="text" class="" name ="updated"  value="${board.updated}"readonly="readonly"></input></td>
	                        </tr>
	                        <tr>
	                        	
		                        <td>비밀번호</td>
		                        <td><input class="" type = password name = passcode size=10 maxlength=10 value="${board.passcode}"readonly="readonly"></td>
	                        </tr>
                        </table>
               			<input  id="bbs_id" type="text" value="${board.bbs_id}">
                		
	                	</td>
                	</tr>
        		</table>
        		<table style="width: 450px">
           		<tr>
           			<td><textarea id="repl" rows="5" cols="60"></textarea></td>
           			<td><input id="btnRe" type="button" value="댓글등록"></td>
           		</tr>
           	</table>  
             </div >
             <br>
             <br>
             <div style="position: absolute; left: 50%">
             <c:if test="${userid eq board.writer}">
             	<input  id="update_View" type="button" value="수정페이지">
             </c:if>
             	<input id="list" type="button" value="목록" >
           	</div>
           	<input id="d" type=button value="수정">
           	<input id="u"type=button value="삭제">
        </div>
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		
	})
	.on("click","#update_View",function(){
		location.href="/app/board_view?bbs_id=${board.bbs_id}+&vill="+1;
	})
	.on("click","#list",function(){
		location.href="/app/board_list";
	})
	.on("click","#btnRe",function(){
		let pstr=$("#repl").val();
		pstr=$.trim(pstr);
		console.log(pstr);
		if(pstr=='') return false;
		$.post('http://localhost:8080/app/ReplyControl',
				{optrype:'add',content:pstr,bbs_id:$("#bbs_id").val(),writer:$("#writer").val()},
				function(result){
					console.log(result);
				},'text')
	})
	.on("click","#d",function(){
		$.post('http://localhost:8080/app/ReplyControl',
				{optrype:'delete',content:$("#repl").val(),bbs_id:$("#bbs_id").val(),writer:$("#writer").val()},
				function(result){
					console.log(result);
				},'text')
	})
	.on("click","#u",function(){
		$.post('http://localhost:8080/app/ReplyControl',
				{optrype:'update',content:$("#repl").val(),bbs_id:$("#bbs_id").val(),writer:$("#writer").val()},
				function(result){
					console.log(result);
				},'text')
	})
</script>
</html>