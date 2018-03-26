
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<title>BlackHole</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/codingBooster.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">


<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Indie+Flower|Mina');

* {
	font-family: 'Mina', sans-serif;
}

blockquote {
	background: #f9f9f9;
	border-left: 10px solid:#cccccc;
	margin: 1.5em 10px;
	padding: 0.5em 10px;
	quotes: "\201C" "\201D\""\2018 "" \2019";
}

blockquote:before {
	color: #cccccc;
	content: open-quote;
	font-size: 3em;
	line-height: 0.1em;
	margin-left: 0.25em;
	vertical-align: -0.4em;
}

blockquote:after {
	color: #cccccc;
	content: close-quote;
	font-size: 3em;
	line-height: 0.1em;
	margin-left: 0.25em;
	vertical-align: -0.4em;
}

.jumbotron {
	background-image: url('images/9999.jpg');
	background-size: cover;
	text-shadow: black;
	color: black;
	height: 600px;
}

.container {
	width: 100%;
}
</style>
</head>
<body>
	<%
		//현재 세션이 존재할경우 아이디값을 받아서 넣어준다.
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		System.out.println("main userid:" + userID);
	%>

	<div class="container">
		<a class="navbar-brand" href="main.jsp">Black Hole</a> <a
			class="navbar-brand" href="login.jsp"><h6>Login</h6></a> <a
			class="navbar-brand" href="join.jsp"><h6>MemberShip</h6></a>
	</div>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="introuduction.jsp">Introduction<span
							class="sr-only"></span></a></li>
					<li><a href="bbs.jsp">Notice</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">SHOES<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/BBS/item/Sneakers Slip on.jsp">Sneakers/Slip-on</a></li>
							<li><a href="/BBS/item/Walker Boots.jsp">Walker/Boots</a></li>
							<li><a href="/BBS/item/Sendal Sleeper.jsp">Sandal/Sleeper</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">OUTER<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="iecture.jsp">티셔츠</a></li>
							<li><a href="#">바지</a></li>
							<li><a href="#">악세사리</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">TEE<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="iecture.jsp">티셔츠</a></li>
							<li><a href="#">바지</a></li>
							<li><a href="#">악세사리</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">PANTS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="iecture.jsp">티셔츠</a></li>
							<li><a href="#">바지</a></li>
							<li><a href="#">악세사리</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">CARDIGAN/KNLT<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="iecture.jsp">티셔츠</a></li>
							<li><a href="#">바지</a></li>
							<li><a href="#">악세사리</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">DRESS/SKIRT<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="iecture.jsp">티셔츠</a></li>
							<li><a href="#">바지</a></li>
							<li><a href="#">악세사리</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="from-control" placeholder="내용을입력하세요.">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<%
					if (userID == null) {
				%>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="faise">회원관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="logoutAction.jsp">로그아웃</a></li>
						</ul>
					<li>
				</ul>
				<%
					}
				%>

			</div>
		</div>
	</nav>