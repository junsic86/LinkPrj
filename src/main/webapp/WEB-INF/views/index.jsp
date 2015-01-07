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
	
	<!-- Bootstrap -->
	<link href="/resources/bootstrap-3.3.1/css/bootstrap.min.css" rel="stylesheet"> <!-- Sandstone -->
	<!-- <link href="/resources/bootstrap-3.3.1/css/bootstrap-theme.min.css" rel="stylesheet"> -->
</head>
<body>
	
	<!-- 본문 시작 -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">ppugo</a>
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
	</div>
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" align="center">
					<img src="/resources/img/mac-459196_1280.jpg" width="1024" height="200" alt="...">
					<div class="carousel-caption">
					
					</div>
				</div>
				<div class="item" align="center">
					<img src="/resources/img/seoul-410257_1280.jpg" width="1024" height="200" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item" align="center">
					<img src="/resources/img/workstation-405768_1280.jpg" width="1024" height="200" alt="...">
					<div class="carousel-caption">...</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
	</div>
	<br>
	<div class="container">
		<div class="row">
				<div class="col-xs-12">
					<form role="form" action="search" method="get">
						<div class="input-group">
							<input type="text" class="form-control" name="search"> <span
								class="input-group-btn">
								<button class="btn btn-success" type="submit">Search</button>
							</span>
	
						</div>
					</form>
				</div>
		</div>
		
		<br>
		<br>
		<br>
		
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
