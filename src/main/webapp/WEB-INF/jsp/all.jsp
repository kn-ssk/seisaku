<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body{
		background-color:whitesmoke;
	}
	#wrapper{
		text-align:center;
		width:70%;
		margin:auto;
	}
	html {
    font-family: 'Rounded Mplus 1c', sans-serif;
	}
	.btn{
		padding:0.8rem 2rem;
		background-color:plum;
		color:white;
		font-size:30px;
		font-weight:bold;
		border:none;
		text-decoration:none;
		box-shadow:0 1px 5px rgba(0,0,0,0.1);
		transition;background-color blue;
		margin-top:15px;
		display:inline-block;
		width: 150px;
		height: 150px;
		border-radius: 10px;
		text-align: center;
		line-height: 150px;
		}
	.btn:hover{
		background-color:purple;
		}
	.green-btn{
		background-color:lightgreen;
		}
	.green-btn:hover{
		background-color:green;
		}
	.blue-btn{
		background-color:lightblue;
		}
	.blue-btn:hover{
		background-color:#3265FF;
		}
	.yellow-btn{
		background-color:#FFFF00;
		}
	.yellow-btn:hover{
		background-color:gold;
		}
	#topButton {
		position: fixed;
		top: 20px;
		right: 20px;
		background-color: white;
		color: black;
		padding: 10px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		z-index: 999;
		}
	</style>
	
<title>MBTI一覧</title>
</head>
<body>
<form action="All" method="post">
<div id="wrapper">
<h1>MBTI一覧</h1>
<a href="intj.jsp" class="btn">INTJ</a>
<a href="intp.jsp" class="btn">INTP</a>
<a href="entj.jsp" class="btn">ENTJ</a>
<a href="entp.jsp" class="btn">ENTP</a><br>
<a href="infj.jsp" class="btn green-btn">INFJ</a>
<a href="infp.jsp" class="btn green-btn">INFP</a>
<a href="enfj.jsp" class="btn green-btn">ENFJ</a>
<a href="enfp.jsp" class="btn green-btn">ENFP</a><br>
<a href="istj.jsp" class="btn blue-btn">ISTJ</a>
<a href="isfj.jsp" class="btn blue-btn">ISFJ</a>
<a href="esfj.jsp" class="btn blue-btn">ESFJ</a>
<a href="estj.jsp" class="btn blue-btn">ESTJ</a><br>
<a href="istp.jsp" class="btn yellow-btn">ISTP</a>
<a href="isfp.jsp" class="btn yellow-btn">ISFP</a>
<a href="estp.jsp" class="btn yellow-btn">ESTP</a>
<a href="esfp.jsp" class="btn yellow-btn">ESFP</a>
</div>
<a href="top.jsp" id="topButton">TOPへ</a>
</form>
</body>
</html>