<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>JObMBTI</title>
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
	color:orange;
			display: inline-block;
			padding: 15px;
			border-radius: 50px;
			background-color:white;
			font-size:38px
	}
	
	p{
	color:white;
		font-size: 23px;
	}
	select[name="mbti"] {
        font-size: 25px;
        padding: 10px;
        width: 80%;
        max-width: 300px;
        text-align:center;
        border-radius: 10px;
         font-family: 'Rounded Mplus 1c', sans-serif;
    }
    select[name="mbti"] option {
        font-size: 25px;
        padding: 10px;
        text-align:center;
         font-family: 'Rounded Mplus 1c', sans-serif;
    }
    
    input[type="submit"] {
		font-size: 20px;
		border-radius: 10px;
		background-color: #ea5532;
		color: white;
		 font-family: 'Rounded Mplus 1c', sans-serif;
		 padding: 10px;
		}
	input[type="submit"]:hover {
		background-color: white;
		color: #ea5532;
		 font-family: 'Rounded Mplus 1c', sans-serif;
	}
	
	.slide-container {
 width: 100%;
 margin: 50px auto;
 display: flex;
 align-items: center;
 overflow: hidden;
}
.slide-wrapper {
 display: flex;
 animation: slide-flow 50s infinite linear;
}
.slide{
 width: 150px;
 height: auto; /* 高さは自動調整 */
    margin-right: 20px; 
 object-fit:cover;
 border: 1px solid #ddd;
  border-radius: 50%; /* 丸い画像にする */
}
@keyframes slide-flow {
 0% {transform: translateX(0);}
 100% {transform: translateX(-100%);}
}

.title2{
			font-size: 28px;
			color:white;
			display: block;
			background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 75%, #ea5532 25%);
			padding: 0.5px 5px;
			margin: 0 auto;
			width: fit-content;
			margin-bottom: 10px;
		}
		
		a {
		color: #ea5532;
		}
	
		a:hover {
		color: #6a1917;
		}
    
	</style>
<body>
<div class="wrapper">
<h1>向いている仕事は何だろう？</h1>
<p>あなたのMBTIを選択すると向いている仕事が表示されます！</p>
<form action="Main" method="post">
<select name="mbti">
	<option value="1">INTJ　建築家</option>
	<option value="2">INTP　論理学者</option>
	<option value="3">ENTJ　指揮官</option>
	<option value="4">ENTP　討論者</option>
	
	<option value="5">INFJ　提唱者</option>
	<option value="6">INFP　仲介者</option>
	<option value="7">ENFJ　主人公</option>
	<option value="8">ENFP　運動家</option>
	
	<option value="9">ISTJ　管理者</option>
	<option value="10">ISFJ　擁護者</option>
	<option value="11">ESFJ　領事</option>
	<option value="12">ESTJ　幹部</option>
	
	<option value="13">ISTP　巨匠</option>
	<option value="14">ISFP　冒険家</option>
	<option value="15">ESTP　起業家</option>
	<option value="16">ESFP　ｴﾝﾀｰﾃｲﾅｰ</option>
	</select>
<input type="submit" value="確認"><br>
</form>

<div class="slide-container">
 <div class="slide-wrapper">
 <img class="slide" src="images/enfj.jpg" alt="ENFJ">
 <img class="slide" src="images/enfp.jpg" alt="ENFP">
 <img class="slide" src="images/entj.jpg" alt="ENTJ">
 <img class="slide" src="images/entp.jpg" alt="ENTP">
 <img class="slide" src="images/enfj.jpg" alt="ENFJ">
 <img class="slide" src="images/esfp.jpg" alt="ESFP">
 <img class="slide" src="images/estj.jpg" alt="ESTJ">
 <img class="slide" src="images/estp.jpg" alt="ESTP">
 <img class="slide" src="images/infj.jpg" alt="INFJ">
 <img class="slide" src="images/infp.jpg" alt="INFP">
 <img class="slide" src="images/intj.jpg" alt="INTJ">
 <img class="slide" src="images/intp.jpg" alt="INTP">
 <img class="slide" src="images/isfj.jpg" alt="ISFJ">
 <img class="slide" src="images/isfp.jpg" alt="ISFP">
 <img class="slide" src="images/istj.jpg" alt="ISTJ">
 <img class="slide" src="images/istp.jpg" alt="ISTP">
 </div>
 <div class="slide-wrapper">
 <img class="slide" src="images/enfj.jpg" alt="ENFJ">
 <img class="slide" src="images/enfp.jpg" alt="ENFP">
 <img class="slide" src="images/entj.jpg" alt="ENTJ">
 <img class="slide" src="images/entp.jpg" alt="ENTP">
 <img class="slide" src="images/enfj.jpg" alt="ENFJ">
 <img class="slide" src="images/esfp.jpg" alt="ESFP">
 <img class="slide" src="images/estj.jpg" alt="ESTJ">
 <img class="slide" src="images/estp.jpg" alt="ESTP">
 <img class="slide" src="images/infj.jpg" alt="INFJ">
 <img class="slide" src="images/infp.jpg" alt="INFP">
 <img class="slide" src="images/intj.jpg" alt="INTJ">
 <img class="slide" src="images/intp.jpg" alt="INTP">
 <img class="slide" src="images/isfj.jpg" alt="ISFJ">
 <img class="slide" src="images/isfp.jpg" alt="ISFP">
 <img class="slide" src="images/istj.jpg" alt="ISTJ">
 <img class="slide" src="images/istp.jpg" alt="ISTP">
 </div>
</div>

<div class="title2">MBTIとは？</div>
<p>自身の資質や改善点、コミュニケーションの特徴を深く理解し<br>
キャリア選択や人間関係構築の指針として活用できる<br>
性格診断ツールです。</p>
<p>診断したことがない方は下記の公式サイトで診断できます！</p>
<p>無料性格診断テスト - 16Personalities<br>
「引用:<a href="https://www.16personalities.com" target="_blank">https://www.16personalities.com</a>」</p>
</div>
</body>
</html>