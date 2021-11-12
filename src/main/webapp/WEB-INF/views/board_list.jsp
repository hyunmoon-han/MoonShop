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
        background-color: blanchedalmond;
        position: relative;
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
        <div id="sub" class="">		
            <div id="nav">
                <ul>
                    <li><a href="/app/coffee">Coffee</a></li>
                    <li><a href="/app/sList">사진첩</a></li>
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
	                <li><a href="/app/board_list">notice</a></li>
	                <li> Q & A</li>
	                <li>Review</li>
	                <li style="text-decoration-line: underline;">search</li>
            	</ul>
            </div>
        </div>
        <div id="main" style="font-size:15px">
            <h3 style="text-align: center; background-color: lightgreen;">자유 게시판</h3>
            <div class="container" >
           		<div style="float: right;">
	            	<form action="/app/selBtn" method="post" >
			            <select id="selCheck" name="search_type">
			            	<option  value="D" selected="selected" >전체</option>
			           		<option  value="T" >제목</option>
			           		<option value="W">작성자</option>
			            </select>
			            <input  id="selText" type="text" name="search_keyword" disabled="disabled" placeholder="검색어를 입력하세요." style="width: 230px;">
			            <input  id="selBtn" type="submit" value="검색">
	            	</form>
            	</div>
	            <table id="tbl1" class="table table-hover text-center table-striped" style="cursor: pointer;">
	            	<thead style="background-color:#958e8e3b;">
		            	<tr>
		            		<th style="width:70px">NO.</th>
		            		<th style="width:230px">제목</th>
		            		<th >내용</th>
		            		<th style="width:80px">작성자</th>
		            		<th style="width:100px">생성일</th>
		            		<th style="width:100px">수정일</th>
		            	</tr>
		            </thead>	
	            	<tbody>
	            		<c:forEach items="${boardVO}" var="boardVO">
	            		<tr class="table-warning">
	            			<td>${boardVO.bbs_id}</td>
	            			<td class="tit">${boardVO.title}</td>
	            			<td class="con">${boardVO.content}</td>
	            			<td>${boardVO.writer}</td>
	            			<td>${boardVO.created}</td>
	            			<td>${boardVO.updated}</td>
	            		</tr>
	            	</c:forEach>
	            	</tbody>
	            	
	            </table>
             </div>
             
             <input id="insert" type="button" value="글쓰기" style="float: right; margin-right: 90px" >  
           	<input id="bbsCode"type="text">
            
        </div>
        
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		$(".con").each(function(){
			if($(this).text().length>30){
				$(this).html($(this).text().substr(0,30)+"....");
			}
		}),
		$(".tit").each(function(){
			if($(this).text().length>13){
				$(this).html($(this).text().substr(0,13)+"....");
			}
		})
	})
	.on("click","#tbl1 tbody tr",function(){
		//location.href="/app/board_view";
		code=$(this).find("td:eq(0)").text();
		$("#bbsCode").val(code);
		//console.log(a);
		location.replace('/app/board_view?bbs_id='+code+"&vill="+0);
		
	})
	.on("click","#insert",function(){
		location.href="/app/board_insert";
	})
	.on("click","#logout",function(){
		location.replace("/app/logout");
	})
	//-------------검색 기능
	//검색버튼 처리
	.on("click","#selBtn",function(){
		if($("#selCheck").val()=='D'){
			$("#selText").val('');
		}
	})
	.on("mouseout","#selCheck",function(){
		if($("#selCheck").val()=='D'){
			$("#selText").attr("disabled",true);
		}else{
			$("#selText").attr("disabled",false);
		}
	})
</script>
</html>