<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Mbti"%>
<%
Mbti selectMbti = (Mbti)request.getAttribute("mbti");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style>
		body{
			background-color:plum;
		}
		
		.wrapper{
			text-align:center;
			width:70%;
			margin:0 auto;
		}
		
		html{
			font-family: 'Rounded Mplus 1c', sans-serif;
		}
		
		.half{
			display: flex;
		}
		
		.left-half{
			flex: 1;
			text-align:left;
			padding-left: 20px;
		}
		
		.right-half{
			flex: 1;
			text-align:right;
			padding-left: 20px;
		}
		
		h1{
			color:white;
			display: inline-block;
			padding: 15px;
			border-radius: 50px;
			background-color:purple;
		}
		
		.list-container{
			border: 3px solid white;
			padding: 70px;
			border-radius: 30px;
			width: 200px;
			height: 40px;
			display: flex;
			justify-content: center;
			align-items: center;
			margin: 0 auto;
		}
		
		.list-container ul{
			text-align: left;
		}
		
		.rounded-image{
			border-radius: 50%;
			border: 3px solid purple;
			width: 180px;
			height: 180px;    
		}
		
		.job-title{
			font-size: 23px;
			display: block;
			background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 75%, #800080 25%);
			padding: 0.5px 5px;
			margin: 0 auto;
			width: fit-content;
			margin-bottom: 10px;
		}
	</style>
	<title>INTJ</title>
</head>

<body>
<form action="Main" method="post">
	<div class="wrapper">
		<h1><%= selectMbti.getMbtiName() %>　<%= selectMbti.getMbtiType() %></h1>
		<div class="half">
			<div class="right-half">
				<img src="<%= request.getContextPath() %>/images/<%= selectMbti.getMbtiImage() %>" alt="MBTI image" class="rounded-image">
			</div>
			<div class="left-half">
				<p>特徴</p>
				<p><%
						String character = selectMbti.getCharacter();
						character = character.replaceAll("/", "<br>");
						out.println(character);
					%>
				</p>
			</div>
		</div><br>
		<div class="job-title">向いているお仕事</div>
		<div class="list-container">
			<ul>
				<% 
					String jobList = selectMbti.getJob();
					String[] jobs = jobList.split("/");
					for (String job : jobs) {
				%>
					<li><%= job %></li>
				<% } %>
			</ul>
		</div><br>
		<a href="All">MBTI一覧へ</a>
	</div>
</form>
</body>
</html>