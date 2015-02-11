<!DOCTYPE html>
<html>

<head>
<title>Just Ask</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="mystyle.css"> <!--external css style-->

<!--embedded css style-->
<style type="text/css">
a:visited
{color: #eeeeee;}

a:hover 
{color: red;}

p {text-indent:50px;}

</style>
</head>

<body link=#eeeeee> <!--set the default color of the links-->

<div id="wrapper">

	<div id="leftcolumn">
	<a style="color:#E6E65C;" href="home.php">Home</a>
	<a href="question.php">Ask a Question</a>
	<a href="answer.php">Answer a Question</a>
	<a href="about.html">About Us</a>
	<a  href="contact.html">Contact</a>
	</div>
	
	<div id="rightcolumn">
	
		<div id="logo">
		<h1>Just Ask</h1>
		</div>
		
	<div class="content">
		
		<p><h1 style="margin-left:450px; margin-top:100px">Welcome </h1> <br>
		<h3 style="margin-left:500px;">
		<?php
session_start();
echo  $_SESSION['username']."</br>";
 ?>
 </h3>
 
 <center>
 <img src="profile.png" alt="profile" style="width:138px;height:152px">
 <br><br><br><br><br>
		
<form  action="logout.php" method="post" >

<input type="submit" name="logout" value="Log out" />

</form>
		</center>
		
		<br><br><br><br><br><br><br><br>
		
		
		</p>
	</div>
	
		<div id="footer">
		<hr /><br/>
		Copyright &copy; 2015 Kreshnik Shena<br/>
		Last updated on 02/11/2015
		</div>
		
	</div>
	
</div>
</body>
</html>
	
