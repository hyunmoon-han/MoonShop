<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
	<table style="width: 500px;">
		<tr>
			<td style="width: 37px">내용:</td>
			<td><textarea rows="3" cols="40" style="width: 100%">휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에 대한 설명문휴면 교육센터의 교육과정에 대한 설명문</textarea> </td>
			<td style="width: 37px"><input type="hidden" ></td>
		</tr>
		<tr>
			<td></td>
			<td>한현문[2021/10/6]</td>
			<td>수정 </td>
		</tr>
	</table>
<P>  The time on the server is ${serverTime}. </P>
<form action="/app/coffee",method="get">
	<input type="submit" value="coffee">
</form>

</body>
</html>
