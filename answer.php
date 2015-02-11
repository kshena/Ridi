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
	<a  href="question.php">Ask a Question</a>
	<a style="color:#E6E65C;" href="answer.php">Answer a Question</a>
	<a  href="about.html">About Us</a>
	<a  href="contact.html">Contact</a>
	</div>
	
	<div id="rightcolumn">
	
		<div id="logo">
		<h1>Just Ask</h1>
		</div>
		
	<div class="content">
	
	
	
	
	
		
		<?php
		
		$servername = "localhost";
$username = "admin";
$password = "5pR1nG2OlS";
$dbname = "justask";

// Create connection
$mysqli = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
}
		
		
		session_start();
		$user = $_SESSION['username'];
  
		
		$query = "SELECT q_id, q_title, asker_id
		FROM question";
		

		$questionResult = $mysqli->query($query)
  or die($mysqli->error);
		
echo "<table>";

echo "<tr><td><strong>Question Number</strong></td><td><strong>Question Title</strong></td></tr>";
//echo "<br><br><br><br><br>";

while($row = $questionResult->fetch_assoc())
{ 
echo "<tr><td>" . $row['q_id'] . "</td><td>" . $row['q_title'] . "<td>
<form  action='logout.php' method='post' >

<input type='submit' name='answer' value='Answer' />

</form></td></tr>";
}

echo "</table>";

	
?>

<br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br>
		
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
	
