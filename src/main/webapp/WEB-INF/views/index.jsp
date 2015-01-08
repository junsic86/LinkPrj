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
	
	<style type="text/css">
		.main_list {
			padding: 10px;
			border: 1px solid #C4C4C4;
			box-shadow: 5px 5px 2px #888888;
		}
		.main_jumbotron {
			background-image: url("/resources/img/mac-459196_1280.jpg");
			background-size: 100%;
			background-repeat: no-repeat;
		}
		
		body {
			padding-top: 60px;
			padding-bottom: 10px;
		}
	</style>
</head>
<body>
	<!-- 본문 시작 -->
	<nav class="navbar navbar-default navbar-fixed-top">
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
	</nav>
	<div class="jumbotron main_jumbotron">
      <div class="container">
        <h2 style="color: #FFFFFF;">Hello, world!</h2>
        <p style="color: #FFFFFF; height: 20%">Fusce congue ultricies est non dignissim. Vivamus imperdiet faucibus faucibus. Sed ac purus maximus, fringilla nunc vitae, varius nisl. Fusce pretium dolor sed aliquet vehicula. Sed vitae ipsum ac mi euismod scelerisque. Nam ac ipsum sed neque mollis lacinia et sit amet ligula. Integer non ipsum et purus convallis semper. Aenean porttitor metus sit amet nisi ornare sollicitudin.</p>
        <!--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p> -->
      </div>
    </div>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="display: none">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" align="center">
					<img src="/resources/img/mac-459196_1280.jpg" alt="..." style="width: auto; height:400px;">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item" align="center">
					<img src="/resources/img/seoul-410257_1280.jpg" alt="..." style="width: auto; height:400px;">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item" align="center">
					<img src="/resources/img/workstation-405768_1280.jpg" alt="..." style="width: auto; height:400px;">
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
		<ul class="media-list">
		<li class="media main_list">
			<a class="media-left media-middle" href="#" style="width:64px; height:64px;"> <img src="/resources/img/seoul-410257_1280.jpg" alt="..." class="img-thumbnail" style="width:64px; height:64px;"/>
			</a>
			<div class="media-body media-middle">
				<h4 class="media-heading">Media heading</h4>
				Nullam tincidunt in quam ut bibendum. Maecenas tortor sem, finibus non ante quis, vehicula molestie eros. Mauris euismod purus nibh, sit amet mattis ante venenatis quis. Sed et nisl in orci porta luctus. Aenean fermentum, diam eget ultricies aliquam, magna lacus luctus erat, vel aliquam purus libero eget lacus. Duis a elit dictum, dignissim ligula non, semper elit. Nulla magna sapien, consectetur non dui vel, hendrerit ultrices nunc. Aenean nunc erat, elementum eu malesuada in, dictum sed urna.
			</div>
		</li>
		<li class="media main_list">
			<a class="media-left media-middle" href="#" style="width:64px; height:64px;"> <img src="/resources/img/seoul-410257_1280.jpg" alt="..." class="img-thumbnail" style="width:64px; height:64px;"/>
			</a>
			<div class="media-body">
				<h4 class="media-heading">Media heading</h4>
				Nulla ac urna ultricies, suscipit massa volutpat, consequat orci. Sed aliquam diam quis eros cursus ornare. Sed interdum commodo nisl, at venenatis ligula hendrerit sed. Nunc accumsan malesuada dui ut varius. Nulla sem arcu, convallis vel cursus a, porta a quam. Quisque nibh nulla, maximus vel eros sed, efficitur rutrum ipsum. Etiam rutrum, ante non vulputate sollicitudin, quam turpis vulputate tellus, sed hendrerit enim nisl sit amet dui. Pellentesque eu dolor pretium lacus pharetra auctor ut et dui. Nullam nec lobortis magna.
			</div>
		</li>
		<li class="media main_list">
			<a class="media-left media-middle" href="#" style="width:64px; height:64px;"> <img src="/resources/img/seoul-410257_1280.jpg" alt="..." class="img-thumbnail" style="width:64px; height:64px;"/>
			</a>
			<div class="media-body">
				<h4 class="media-heading">Media heading</h4>
				Nam dictum pellentesque euismod. Pellentesque iaculis eget mi vel sollicitudin. Nam dui eros, aliquet at metus in, sollicitudin laoreet ex. Sed vulputate nisi vel suscipit vulputate. Nullam ut justo id urna tristique rhoncus. Ut a egestas eros. Integer vitae felis orci.
			</div>
		</li>
		<li class="media main_list">
			<a class="media-left media-middle" href="#" style="width:64px; height:64px;"> <img src="/resources/img/seoul-410257_1280.jpg" alt="..." class="img-thumbnail" style="width:64px; height:64px;"/>
			</a>
			<div class="media-body">
				<h4 class="media-heading">Media heading</h4>
				Nulla feugiat, orci eget iaculis faucibus, diam nunc faucibus ligula, nec sodales sapien leo eu turpis. Vestibulum eget urna sapien. Curabitur nec iaculis nunc, sit amet pulvinar velit. Sed imperdiet metus orci, et congue libero facilisis ac. In viverra dignissim nisl vitae imperdiet. Fusce ullamcorper quam in tortor facilisis finibus. Vivamus aliquam ante eget vulputate mattis. Maecenas dignissim tincidunt leo, id ullamcorper nunc ultrices ac.
			</div>
		</li>
		</ul>
		
		<!-- 
		<blockquote>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
			<footer>
				Someone famous in <cite title="Source Title"> Time ${serverTime} </cite>
			</footer>
		</blockquote>
	 	-->
	 	<br>
	 	<footer>
        <p align="center"><span class="label label-info">&copy; Company 2014 m.ppugo.com</span></p>
      	</footer>
	</div>
	
	
	<!-- 자바스크립트 -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="/resources/jquery-1.11.1/jquery-1.11.1.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/resources/bootstrap-3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
