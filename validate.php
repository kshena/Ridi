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


	$user = $_POST['username'];
	$pass = $_POST['password'];
	
	
	
	$query ="SELECT * FROM user WHERE username='$user' and password='$pass'";
    $result = $mysqli->query($query);
    $count=mysqli_num_rows($result);
    // If result matched $username and $password, the count of table rows should equal 1
    if($count==1){
   
   
    session_start();
    $_SESSION['username']= $user;
    header("location:home.php");
    }
    else {
	
	header("location:deny.html");
    }
    ?>
