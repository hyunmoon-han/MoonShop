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
    #sub{
        background-color:blanchedalmond;
        width: 100%;
        height: 100%;
    }
    #nav{
        background-color: blanchedalmond;
    }
    
    #main{
        height: 100%;
        background: blanchedalmond;
    }
    #main_m{
        width: 80%;
        height: 80%;
        margin: 0px auto;
        background-color: tan;
    }
    #main_m ul{
    	height: 100%
    }
    #main_m ul li{
        display: inline-block;
        width: 23%;
        height: 40%;
        margin-left: 5px;
        margin-bottom: 20px;
    }
    dl{
        height: 100%;
    }
    dt{
        background-color: honeydew;
        height: 90%;
    }
    dd{
        height: 10%;
        font-size: 14px;
        text-align: center;
        background-color: #c9a7e2;
    }
    #cap{
    	width: 30%;
    	height: 5%;
    	margin: 0 auto;
    }
    .page-link {
     padding: 0rem 0rem;
	}
	a{
		color:#73a1e5;
		font-size:22px;
		text-decoration-line: blink;
	}
	.home{
			cursor: pointer;
		}
</style>
<body>
    <header>
    	<div class="home" style="background-color: #fff8ed; width: 120px;height: 100%;position: relative; left: 12%; border-radius: 70px">
			 <span style="text-align: center;position: absolute; left: 14%; top: 15px;font-size: 40px">1854<br>
			<span style="font-size: 28px;position: absolute;top: 28px;left: 20px;">Shop</span></span>
		</div>
		<input id="logout"type="button" value="로그아웃" style="float: right;position: absolute;right: 10px;top: 20px;font-size: 15px;top: 4%;">
    </header>
    <section>
        <div id="sub" class="">
            <div id="nav">
                <ul>
                    <li>Coffee</li>
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
	                <li><a href="/app/board_list">notice</a></li>
	                <li> Q & A</li>
	                <li>Review</li>
	                <li style="text-decoration-line: underline;">search</li>
            	</ul>
            </div>
        </div>
        <div id="main">
            <h3 style="text-align: center; background-color: blanchedalmond;">Menu</h1>
            <div id="main_m">
               <ul style="width: 100%; background-color: blanchedalmond">
                   <li>
                       <dl>
                           <dt id="oo">
                               <img width="150" height="150" src="" border="0" title="">
                           </dt>
                           <dd>
                              	메뉴
                           </dd>
                       </dl>
                    </li>
                   <li>
                        <dl>
                            <dt >
                                2
                            </dt>
                            <dd>
                                123
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt >
                                3
                            </dt>
                            <dd>
                                123
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt >
                                4
                            </dt>
                            <dd>
                                123
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt >
                                5
                            </dt>
                            <dd>
                                123
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt >
                                6
                            </dt>
                            <dd>
                                123
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt >
                                7
                            </dt>
                            <dd>
                                123
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt >
                                8
                            </dt>
                            <dd>
                                123
                            </dd>
                        </dl>
                    </li>
               
               <!-- 페이징 -->
	               <nav id="cap" aria-label="Page navigation example" >
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
				</ul>	
            </div>
        </div>
        
    </section>
</body>
<script>
$(document)
.ready(function(){
	
})
.on("click","#main_m ul li",function(){
	location.href="/app/menu";
})
.on("click","#logout",function(){
		location.replace("/app/logout");
})
.on("click",".home span",function(){
	location.href="/app/Main";
})
</script>
</html>