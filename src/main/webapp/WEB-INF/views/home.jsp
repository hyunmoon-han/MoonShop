<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<html>
<head>
<!--jquery-->    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<title>Home</title>
</head>
<style>
td{
	font-size:15px;
}
</style>
<body>
<h1>
	Hello world!  
</h1>
	<table style="width: 500px;" id="tbl">
		<tr>
			<td style="width: 37px">내용:</td>
			<td>휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에 대한 설명문 </td>
			<td style="width: 37px"><input type="hidden" ></td>
		</tr>
		<tr>
			<td></td>
			<td>한현문[2021/10/6]</td>
			<td><input type="button" value="수정 폼" id="t1"> </td>
			
		</tr>
	</table>
	<table style="width: 500px;" id="tbl2">
		<tr>
			<td style="width: 37px">내용:</td>
			<td><textarea rows="3" cols="40" style="width:100%;" disabled="disabled">휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에센터의 </textarea></td>
			<td style="width: 37px"><input type="hidden" ></td>
		</tr>
		<tr>
			<td></td>
			<td>moon[2021/10/6]</td>
			<td><input type="button" value="수정 폼" id="tl1"></td>
			
		</tr>
	</table>
	<input type="text" id="zz" value="1">
<P>  The time on the server is ${serverTime}. </P>
<p>20*(pagen-1)+1
20*pagecno</p>

<form action="/app/coffee",method="get">
	<input type="submit" value="coffee">
</form>
<input type="button" value="Login" id="login">
</body>
<script>
$(document)
.ready(function(){
	
})
.on("click","#login",function(){
	location.href="/app/login";
})
.on("click","#t1",function(){
	//console.log($("#tbl tr:eq(0)").find("td:eq(1)").text());
	let content=$("#tbl tr:eq(0)").find("td:eq(1)").text();
	$("#tbl tr:eq(0)").find("td:eq(1)").text('');
	str="<textarea rows=3 cols=40 id=replyU style='width:100%'>"+content+"</textarea>";
	$("#tbl tr:eq(0)").find("td:eq(1)").html(str);
	$("#t1").hide();
	ac="<input type='button' value='수정' id='t2'>";
	$("#tbl tr:eq(1)").find("td:eq(2)").html(ac);
})
.on("click","#t2",function(){
	check=confirm("댓글을 수정하시겠습니까?");
	if(check){
		alert("수정에 성공했습니다.");
	}else return false;
})
.on("click","#tl1",function(){
	if($("#zz").val()==1){
		//console.log($("#tbl2 tr:eq(0)").find("td:eq(1) textarea").val());
		$("#tbl2 tr:eq(0)").find("td:eq(1) textarea").attr("disabled",false);
	}
})
</script>
</html>
