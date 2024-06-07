<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOBxMBTI</title>
</head>
<style>
	body{
	background-color:#fa9638;
	}
	.wrapper{
	text-align:center;
	width:70%
	margin:0 auto;
	padding-top: 2rem;
	}
	
	html {
    font-family: 'Rounded Mplus 1c', sans-serif;
	}
	h1{
	color:white;
	}
	p{
	color:white;
	}
	select{
	text-align:center;
	}
	</style>
<body>
<div class="wrapper">
<h1>向いている仕事は何だろう？</h1>
<p>公式サイトでMBTI診断してください</p>
<p>無料性格診断テスト - 16Personalities</p>
<p>「引用:<a href="https://www.16personalities.com" target="_blank">https://www.16personalities.com</a>」</p>
<p>結果を入力すると向いている仕事が表示されます！</p>
<form action="Main" method="post">
MBTI
<select name="mbti">
	<option value="1">INTJ　建築家</option>
	<option value="intp">INTP　論理学者</option>
	<option value="entj">ENTJ　指揮官</option>
	<option value="entp">ENTP　討論者</option>
	
	<option value="infj">INFJ　提唱者</option>
	<option value="infp">INFP　仲介者</option>
	<option value="enfj">ENFJ　主人公</option>
	<option value="enfp">ENFP　運動家</option>
	
	<option value="istj">ISTJ　管理者</option>
	<option value="isfj">ISFJ　擁護者</option>
	<option value="esfj">ESFJ　領事</option>
	<option value="estj">ESTJ　幹部</option>
	
	<option value="istp">ISTP　巨匠</option>
	<option value="isfp">ISFP　冒険家</option>
	<option value="estp">ESTP　起業家</option>
	<option value="esfp">ESFP　エンターテイナー</option>
	</select>
<input type="submit" value="確認"><br>
</form>
<a href="All">MBTI一覧</a>
</div>
</body>
</html>