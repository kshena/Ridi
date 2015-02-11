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
	<a  href="home.php">Home</a>
	<a style="color:#E6E65C;" href="question.php">Ask a Question</a>
	<a href="answer.php">Answer a Question</a>
	<a  href="about.html">About Us</a>
	<a  href="contact.html">Contact</a>
	</div>
	
	<div id="rightcolumn">
	
		<div id="logo">
		<h1>Just Ask</h1>
		</div>
		
	<div class="content">
		
	

<center>
<form  action="ask.php" method="post" >

 <center><p style="text-align:left; margin-left:145px;">
 Title&nbsp &nbsp <input type="text" name="q_title" size="80" /></p></center><br>
 
<textarea name="q_text" rows="32" cols="100" >Type your question here
</textarea><br><br>

<input type="submit" name="submit" value="Submit" />

</form>
		</center>
		<br><br><br>
		
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
	
