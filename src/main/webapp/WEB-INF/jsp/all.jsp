<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body{
		background-color:#fa9638;
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
		background-color:#ffdc00;
		}
	.yellow-btn:hover{
		background-color:#c1ab05;
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
<div id="wrapper">
<h1>MBTI一覧</h1>

<form action="MbtiServlet" method="post">
<button type="submit" name="mbti" value="1" class="btn">INTJ</button>
<button type="submit" name="mbti" value="2" class="btn">INTP</button>
<button type="submit" name="mbti" value="3" class="btn">ENTJ</button>
<button type="submit" name="mbti" value="4" class="btn">ENTP</button>

<button type="submit" name="mbti" value="5" class="btn green-btn">INFJ</button>
<button type="submit" name="mbti" value="6" class="btn green-btn">INFP</button>
<button type="submit" name="mbti" value="7" class="btn green-btn">ENFJ</button>
<button type="submit" name="mbti" value="8" class="btn green-btn">ENFP</button>

<button type="submit" name="mbti" value="9" class="btn blue-btn">ISTJ</button>
<button type="submit" name="mbti" value="10" class="btn blue-btn">ISFJ</button>
<button type="submit" name="mbti" value="11" class="btn blue-btn">ESFJ</button>
<button type="submit" name="mbti" value="12" class="btn blue-btn">ESTJ</button>

<button type="submit" name="mbti" value="13" class="btn yellow-btn">ISTP</button>
<button type="submit" name="mbti" value="14" class="btn yellow-btn">ISFP</button>
<button type="submit" name="mbti" value="15" class="btn yellow-btn">ESTP</button>
<button type="submit" name="mbti" value="16" class="btn yellow-btn">ESFP</button>

</form>
</div>
<a href="Main" id="topButton">TOPへ</a>
</body>
</html>