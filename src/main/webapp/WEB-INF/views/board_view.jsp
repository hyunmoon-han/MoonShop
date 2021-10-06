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
	<!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" 
	crossorigin="anonymous"></script>
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
	.modal{
	 position:absolute; 
	 width:100%;
	 height:100%; 
	 background: rgba(0,0,0,0.8); 
	 top:0; left:0; 
	 display:none; 
	 }
	.modal_content{
	font-size:17px;
	width: 50%;
    height: 80%;
    background: #fff;
    border-radius: 10px;
    position: relative;
    top: 15%;
    left: 42%;	
    margin-top: -100px;
    margin-left: -200px;
    text-align: center;
    box-sizing: border-box;
    padding: 7px 18px;
    line-height: 23px;
    cursor: pointer;
	}
	.x{
	position:relative;
	left:78%;
	background-color: white;
	}
	.dropup .dropdown-toggle::after {
    vertical-align: 1.255em;
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
           			<td><input  id="replyALL"type=button value="댓글 보기"></td>
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
           	<input id="d" type=button value="삭제">
           	<input id="u"type=button value="수정">
        </div>
        <!-- 모달창 -->
        <div class="modal"> 	
				<button class="btn-close x" aria-label="Close" ></button>
				<div class="modal_content" > 
					<%-- <table style="width: 100%" id="tbl5">
						<h4>댓글</h4>
						<c:forEach var="replyVO" items="${replyVO}">
							<tr style="height: 40px" >
								<td style="width: 20px">${replyVO.reply_id}.</td>
								<td id="zzz"><input type="text" value="${replyVO.content}" style="width: 100%"></td>
								<td style="width: 157px">${replyVO.writer}[${replyVO.created}]</td>
								<td style="width: 30px">
								<div class="btn-group dropend">
								  <button type="button" id="btnC" class="btn btn-secondary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" style="padding: 0">
								    down
								  </button>
								  <ul class="dropdown-menu" style="min-width: 90px; padding: 7px;font-size:15px;">
								  <li class="u">수정</li>
								  <li><hr style="margin: 5px"></li>
								  <li class="d">삭제</li>
								  </ul>
								</div>
								</td>
							</tr>	
						</c:forEach>
					</table> --%>
					<table style="width: 100%;font-size:15px" id="tbl5">
						<h4>댓글</h4>
						<c:forEach var="replyVO" items="${replyVO}">
							<tr>
								<td style="width: 45px">내용:</td>
								<td><textarea rows="2" cols="40" style="width: 100%">${replyVO.content}</textarea> </td>
								<td style="width: 45px"><input type="hidden" value="${replyVO.reply_id}"></td>
							</tr>
							<tr>
								<td><input type="hidden" value="${replyVO.reply_id}"></td>
								<td style="text-align: left;">${replyVO.writer}[${replyVO.created}]</td>
								<td>
									<div class="btn-group dropend">
									  <button type="button" id="btnC" class="btn btn-secondary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" style="padding: 0">
									    down
									  </button>
									  <ul class="dropdown-menu" style="min-width: 90px; padding: 7px;font-size:15px;">
									  <li class="u">수정</li>
									  <li><hr style="margin: 5px"></li>
									  <li class="d">삭제</li>
									  </ul>
									</div>
								</td>
							</tr>
						</c:forEach>
					</table> 
					<input type="text" id="oo">
				</div> 
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
		k=confirm("댓글을 등록하시겠습니까?");
		if(k){
			let pstr=$("#repl").val();
			pstr=$.trim(pstr);
			console.log(pstr);
			if(pstr=='') return false;
			$.post('http://localhost:8080/app/ReplyControl',
					{optrype:'add',content:pstr,bbs_id:$("#bbs_id").val(),writer:$("#writer").val()},
					function(result){
						console.log(result);
						$("#repl").val('');
						location.reload();
					},'text');
		}else return false;
		
	})
	.on("click",".d",function(){
		check=confirm("댓글을 삭제하시겠습니까?");
		if(check){
			 $.post('http://localhost:8080/app/ReplyControl',
					{optrype:'delete',reply_id:$("#oo").val()},
					function(result){
						console.log(result);
					},'text');
			$("#tbl5 tr").each(function(){
				let Son=$(this).find("td:eq(2) input").val();
				if(Son==$("#oo").val()){
					$(this).remove();
					 $("#tbl5 tr").each(function(){
						let Con=$(this).find("td:eq(0) input").val();
						if(Con==$("#oo").val()){
							$(this).remove();
						}
						
					}) 
				}
			}) 
		}else return false;
	})
	.on("click",".u",function(){
		check=confirm("댓글을 수정하시겠습니까?");
		if(check){
			$("#tbl5 tr").each(function(){
				let Con=$(this).find("td:eq(2) input").val();
				if(Con==$("#oo").val()){
					c=$(this).find("td:eq(1) textarea").val();
					console.log("content="+c); 
					  $.post('http://localhost:8080/app/ReplyControl',
					{optrype:'update',content:c,reply_id:$("#oo").val()},
					function(result){
						if(result=='OK'){
							alert("수정을 성공했습니다.");
						}
					},'text')  
				}
			}) 
		}else return false;
		
		
		
		
	})
	.on("click","#tbl5 tr",function(){
		$(this).each(function(){
			let Con=$(this).find("td:eq(0) input").val();
			$("#oo").val(Con); 
		})	
	})
	//모달창----
	//x버튼 모달창 닫기
	
		$("#replyALL").click(function(){
			$(".modal").fadeIn(); 
		});
		$(".x").click(function(){ 
			$(".modal").fadeOut(); 
		});
		//모달창 닫기 버튼으로 모달창 닫기
		$(".y").click(function(){ 
			$(".modal").fadeOut(); 
		})
	
</script>
</html>