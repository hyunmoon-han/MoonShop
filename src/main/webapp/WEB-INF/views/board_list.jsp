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
            <h3 style="text-align: center; background-color: lightgreen;">공지사항</h3>
            <div class="container" >
	            <table id="tbl1" class="table table-hover text-center table-striped" >
	            	<tr st>
	            		<th>번호</th>
	            		<th>제목</th>
	            		<th>글쓴이</th>
	            		<th>생성일</th>
	            		<th>수정일</th>
	            	</tr>
	            	<tr>
	            		<td>1</td>
	            		<td>2</td>
	            		<td>3</td>
	            		<td>4</td>
	            		<td>5</td>
	            	</tr>
	            	<tr>
	            		<td>6</td>
	            		<td>7</td>
	            		<td>8</td>
	            		<td>9</td>
	            		<td>10</td>
	            	</tr>
	            </table>
             </div>
             <input id="insert" type="button" value="글쓰기" >  
           	<input id="bbsCode"type="text">
            
        </div>
        
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		
	})
	.on("click","#tbl1 tr",function(){
		//location.href="/app/board_view";
		code=$(this).find("td:eq(0)").text();
		$("#bbsCode").val(code);
		//console.log(a);
		location.replace('/app/board_view?c='+1);
		
	})
	.on("click","#insert",function(){
		location.href="/app/board_insert";
	})
</script>
</html>