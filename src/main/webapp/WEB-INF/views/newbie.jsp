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
    #main_m{
    	width: 590px;
	   	height: 500px;
	    background-color: blanchedalmond;
	    position: absolute;
	    left: 35%;
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
                    <li><a href="/app/coffee">Coffee</a></li>
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
	                <li><a href="/app/board_list">notice</a></li>
	                <li> Q & A</li>
	                <li>Review</li>
	                <li style="text-decoration-line: underline;">search</li>
            	</ul>
            </div>
        </div>
        <div id="main" style="font-size:15px">
            <h3 style="text-align: center; background-color: lightgreen;">회원가입</h3>
            <div id="main_m">
            
            	<div class="mb-3 row">
				    <label for="inputPassword" class="col-sm-2 col-form-label">이름</label>
				      <input type="password" class="form-control" id="inputPassword" style="height:40px;width:120px;font-size:10px">
				  </div>
				  <div class="mb-3 row">
				    <label for="inputPassword" class="col-sm-2 col-form-label">ID</label>
				      <input type="password" class="form-control" id="inputPassword" style="height:40px;width:120px;font-size:10px">
				  </div>
            	 <div class="mb-3 row">
				    <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
				      <input type="text"  class="form-control id="staticEmail" placeholder="email@exampleg.com" style="height:40px;width:250px;font-size:17px">
				  </div>
				  <div class="mb-3 row">
				    <label for="inputPassword" class="col-sm-2 col-form-label">전화번호</label>
				      <input type="password" class="form-control" id="inputPassword" style="height:40px;width:120px;font-size:10px">
				  </div>
				 
				  <div class="mb-3 row">
				    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
				      <input type="password" class="form-control" id="inputPassword" style="height:40px;width:120px;font-size:10px">
				  </div>
				  <div class="mb-3 row">
				    <label for="inputPassword" class="col-sm-2 col-form-label">Password check</label>
				      <input type="password" class="form-control" id="inputPassword" style="height:40px;width:120px;font-size:10px">
				  </div>
            </div>
    
           
        </div>
    </section>
</body>
<script>
	$(document)
	.ready(function(){
		
	})
	
</script>
</html>