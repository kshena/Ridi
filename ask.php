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
$q_title = $_POST['q_title'];
$q_text = $_POST['q_text'];



$ask = "INSERT into question(q_title, q_text, q_date, asker_id) VALUES('$q_title','$q_text',NOW(),'$user')";

if(mysql_query($ask)){
header("Location:question.php");
}
else{
echo "Question submission failed!";
}

?>
