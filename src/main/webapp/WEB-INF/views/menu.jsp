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
        background-color: blanchedalmond;
        height: 100%;
    }
    #nav{
        background-color: blanchedalmond;
    }
    #main{
        height: 100%;
        background: blanchedalmond
    }
    #main_m{
    
    	width: 90%;
    	height:80%;
    	margin: 0 auto;
    	display: flex;
    }
    #main_a{
    	width: 55%;
		height: 100%;
		background-color: gray;
    }
    #main_a1{
    	background-color: blanchedalmond;
    	height: 70%;
    }
    #main_a2{
    	background-color: blanchedalmond;
    	height: 30%;
    }
    #main_b{
    	background-color:blanchedalmond;
    	width:45%;
    }
    #cap{
    	width: 30%;
    	height: 5%;
    	margin: 0 auto;
    }
    .page-link {
     padding: 0rem 0rem;
	}
	.main_b_top h4{
		font-size: 28px;
	    border-bottom: 2px solid #333;
	    padding-bottom: 18px;
	    margin-bottom: 20px;
	}
	.main_b_top h4 span{
		font-size: 20px;
	}
	#order{
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
	.main_b_top p{
	    font-size: 15px;
	    color: #444;
	    margin-bottom: 20px;
	    min-height: 40px;
	}
	.gu{
	    height: 59px;
	    line-height: 59px;
	    position: relative;
	    border-top: 1px solid #ddd;
	    border-bottom: 1px solid #ddd;
	}
	.gu p{
		font-size: 17px;
		padding-left: 10px;
	}
	.main_b_bo{
		width: 100%;
	}
	.main_b_bo ul{
		width:50%;
		float:left;
		margin-top:20px;
	}
	.main_b_bo dl{
		width:100%;
		font-size: 15px;
		margin-bottom:5px;
	}
	.main_b_bo dl dt{
		width:85%;
		float:left;
		text-align: left;
		padding-left:12px;
		margin-bottom:5px;
	}
	.main_b_bo dl dd{
		float:right;
		width: 15%;
		text-align: right;
		margin: 0;
		padding-right:15px;
		margin-bottom:5px;
	}
	#mit{
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
        <div id="main">
            <h3 style="text-align: center; background-color: blanchedalmond;height: 10%;">Menu</h1>
            <div id="main_m">
            	<div id="main_a">
            		<div id="main_a1">
            			<img width="90%" height="90%" src="http://www.megacoffee.me/images/menu/smoothie/09.jpg" style="margin-left: 35px; margin-top: 10px">
            		</div>
            		<div id="main_a2">
            			2
            		</div>
            	</div>
            	<div id="main_b">
            		<div class="main_b_top">
								<h4>플레인퐁크러쉬<br><span>Signature The Black Cold Brew</span><span><input id="mit" type="button" value="수정"></span></h4>
								<p class="t1">누구나 좋아하는 마성의 조리퐁~<br>달콤한 퐁크러쉬로 시원하게 즐기세요~</p>
								<div class="gu">
									<p>제품 영양 정보<span style="float: right;margin-right: 30px;">500ml</span></p>
								</div>
								<div class="main_b_bo">
									 <ul>
                                         <li class="kcal">
                                             <dl>
                                                 <dt>1회 제공량 (kcal)</dt>
                                                 <dd>557.0</dd>
                                             </dl>
                                         </li>
                                       	<li class="sat_FAT">
                                             <dl>
                                                 <dt>포화지방 (g)</dt>
                                                 <dd>12.2</dd>
                                             </dl>
                                         </li>
                                         <li class="protein">
                                             <dl>
                                                 <dt>단백질 (g)</dt>
                                                 <dd>10.9</dd>
                                             </dl>
                                         </li>
                                         <li class="fat" style="display:none;">
                                             <dl>
                                                 <dt>지방 (g)</dt>
                                                 <dd>0</dd>
                                             </dl>
                                         </li>
                                         <li class="trans_FAT" style="display:none;">
                                             <dl>
                                                 <dt>트랜스지방 (g)</dt>
                                                 <dd>0</dd>
                                             </dl>
                                         </li>
                                         
                                     </ul>
                                     <ul>
                                         <li class="sodium">
                                             <dl>
                                                 <dt>나트륨 (mg)</dt>
                                                 <dd>153.3</dd>
                                             </dl>
                                         </li>
                                         <li class="sugars">
                                             <dl>
                                                 <dt>당류 (g)</dt>
                                                 <dd>64.5</dd>
                                             </dl>
                                         </li>
                                         <li class="caffeine last">
                                             <dl>
                                                 <dt>카페인 (mg)</dt>
                                                 <dd>0.0</dd>
                                             </dl>
                                         </li>
                                         <li class="cholesterol" style="display:none;">
                                             <dl>
                                                 <dt>콜레스테롤 (mg)</dt>
                                                 <dd>0</dd>
                                             </dl>
                                         </li>
                                         <li class="chabo" style="display:none;">
                                             <dl>
                                                 <dt>탄수화물 (g)</dt>
                                                 <dd>5</dd>
                                             </dl>
                                         </li>
                                     </ul>
								</div>
						<input id="order" type="button" value="주문하기">
					</div>
            	</div>
            </div>
        </div>
        
    </section>
</body>
</html>