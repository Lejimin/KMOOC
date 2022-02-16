<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 링크경로(Head포함) -->
<%@include file="../../module/link.jsp" %>


<body>

<div class="container-fluid">

<!-- header -->
<%@include file="../../module/header.jsp" %>
<!-- nav -->
<%@include file="../../module/nav.jsp" %>
</div>

<h1 class="mt-4 m-4">회원 정보</h1>
<%@page import="vo.*" %>
<%
	MemberVO vo = (MemberVO)request.getAttribute("vo");
%>
<style>
	table{margin:50px 80px;}
	td{border:1px solid black; width:150px; height:60px; text-align:center;}
</style>
<table>
	<tr>
		<td>EMAIL</td>
		<td><%out.println(vo.getEmail()+"<br>"); %></td>
	</tr>
	<tr>
		<td>PW</td>
		<td><%out.println(vo.getPwd()+"<br>"); %></td>
	</tr>
	<tr>	
		<td>ADDR1</td>
		<td><%out.println(vo.getAddr1()+"<br>"); %></td>
	</tr>
	<tr>	
		<td>ADDR2</td>
		<td><%out.println(vo.getAddr2()+"<br>"); %></td>
	</tr>
	<tr>
		<td>ROLE</td>
		<td><%out.println(vo.getRole()+"<br>"); %></td>
	</tr>
		
	
</table>

</body>
</html>