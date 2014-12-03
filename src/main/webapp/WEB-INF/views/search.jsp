<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<title>Home</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<META http-equiv="Expires" content="-1"> 
	<META http-equiv="Pragma" content="no-cache"> 
	<META http-equiv="Cache-Control" content="No-Cache"> 
	
	<!-- Bootstrap -->
	<link href="/resources/bootstrap-3.3.1/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/bootstrap-3.3.1/css/bootstrap-theme.min.css" rel="stylesheet">
	
	<style>
		.list-group-item-heading2{color: #0000FF;}
		.list-group-item-text2{color: #006400;}
	</style>
</head>
<body>

<!-- 본문 시작 -->
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Brand</a>
			</div>
		</div>
	</nav>
	
	<div class="container"> 
	
		<!-- 
		<table border="1">
			<c:forEach var="person" items="${linkList}">
				<tr>
					<td>${person.title}</td>
					<td>${person.contents}</td>
					<td>${person.tag}</td>
					<td>${person.url}</td>
					<td>${person.visitor}</td>
				</tr>
			</c:forEach>
		</table>
		-->
		<!-- 
		<c:forEach var="link2" items="${linkList}">
			<blockquote>
				<p>${link2.title}</p>
				<p>${link2.contents}</p>
				<p>${link2.tag}</p>
				<p>${link2.url}</p>
				<p>${link2.visitor}</p>
			</blockquote>
			<br>
		</c:forEach>
		 -->

		<div class="list-group">
			<c:forEach var="link2" items="${linkList}">
			<a href="#" class="list-group-item">
				<span class="glyphicon glyphicon-file"></span> <span>${link2.title}</span><span class="badge">${link2.visitor}</span>
				<p></p>
				<div class="panel panel-default">
					<div class="panel-body">${link2.contents} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</div>
				</div>
				<h6 class="list-group-item-heading2"><span class="glyphicon glyphicon-link"> Link : </span> ${link2.url}</h6>
				<h6 class="list-group-item-text2"><span class="glyphicon glyphicon-tags"> Tag : </span> ${link2.tag}</h6>
			</a>
			</c:forEach>
		</div>

		<br><br>
		<blockquote>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
			<footer>
				Someone famous in <cite title="Source Title"> Time ${serverTime} </cite>
			</footer>
		</blockquote>

	</div>

<!-- 자바스크립트 -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="/resources/jquery-1.11.1/jquery-1.11.1.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/resources/bootstrap-3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
