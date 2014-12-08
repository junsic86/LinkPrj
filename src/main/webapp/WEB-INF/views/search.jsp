<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<title>Home</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	
	
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
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Pugo</a>
			</div>

			<!-- 부메뉴 -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="./">Index <span class="sr-only">(current)</span></a></li>
					<li><a href="./add">Add</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							Dropdown <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container">

		<div class="container-fluid">
			<div class="row">
				<form role="form" action="search" method="get">
					<div class="col-xs-12">
						<div class="input-group">
							<input type="text" class="form-control" name="search" value="${search}"> <span class="input-group-btn">
								<button class="btn btn-default" type="submit">Search</button>
							</span>

						</div>
					</div>
				</form>
			</div>
			<p>
			<div class="row">
				<div class="col-xs-12">
					<ul class="list-unstyled">
						<li><span class="glyphicon glyphicon-time"> 검색 시간 : ${time}초</span></li>
						<li><span class="glyphicon glyphicon-time"> 검색 개수 : ${linkListcount}개</span></li>
					</ul>
				</div>
			</div>
		</div>
		<p>		
		<div class="list-group">
			<c:forEach var="link2" items="${linkList}">
			<a href="#" class="list-group-item">
				<span class="glyphicon glyphicon-file"></span> <span>${link2.title}</span><span class="badge">${link2.visitor}</span>
				<p></p>
				<div class="panel panel-default">
					<div class="panel-body">${link2.contents}</div>
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
