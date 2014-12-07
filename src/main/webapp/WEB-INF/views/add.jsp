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
	<link href="/resources/bootstrap-3.3.1/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/bootstrap-3.3.1/css/bootstrap-theme.min.css" rel="stylesheet">
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
				<a class="navbar-brand" href="#">PUGO</a>
			</div>
		</div>
	</nav>
	
	<div class="container">		
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Title</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Text input">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Content</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="5"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Tag</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Text input">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Url</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="Text input">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-2">
					<button type="submit" class="btn btn-primary">Submit aaa</button>
				</div>
			</div>
		</form>
	</div>

<!-- 자바스크립트 -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="/resources/jquery-1.11.1/jquery-1.11.1.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/resources/bootstrap-3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
