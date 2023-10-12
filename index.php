<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
	<?php ?>
	<?php include 'header.php' ?>
	<?php
	include 'db_connect.php';
	$qry = $conn->query("SELECT * from site_settings limit 1");
	if($qry->num_rows > 0){
		foreach($qry->fetch_array() as $k => $val){
			$meta[$k] = $val;
		}
	}
	 ?>

  
</head>

<body>
<!-- <script src="jquery-3.6.3.min.js"></script> -->
 <?php include 'topbar.php' ?>


<!-- Hi... I am Allen Shopon -->

  <main id="main">

   <?php 
            $page = isset($_GET['page']) ? $_GET['page'] : 'home';
            include $page.'.php';

            ?>
  </main>
  

  <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


  <!--<center><button style="background-color:Snow"><a href="http://localhost/blog/comment/">Give your Valuable Feedback!!</a></button></center>
 <?php
// Replace these variables with your actual database credentials
$host = "localhost";
$password = "your_password";
$dbname = "your_database_name";

// Connect to the database
$conn = new mysqli('localhost','root','', 'dbcomment');

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// If the form is submitted
// if ($_SERVER["REQUEST_METHOD"] == "POST") {
// error_reporting(0);
    // Get the form data
if(isset($_POST["Mail"]) && $_POST["Feedback"]){

    $email = $_POST["Mail"];
    $feedback = $_POST["Feedback"];

    // Prepare the SQL statement
    $sql = "INSERT INTO userfeedback (Mail, Comment) VALUES ('$email', '$feedback')";

    // Execute the SQL statement
    if (mysqli_query($conn, $sql)) {
        // echo "Thank you for your feedback!";
        echo "<script>alert(`Thank you for your feedback!`);</script>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

    // Close the database connection
    mysqli_close($conn);
}
// }

?>

<!-- HTML form to collect feedback -->
<!--<center><form action="" method="POST">
    <label for="Mail">Email:</label>
    <input style="background-color:aqua" type="Mail" name="Mail"><br>
    <label for="Feedback">Feedback:</label>
    <textarea name="Feedback"></textarea><br>
    <input style="background-color: green;" type="submit" value="Submit">
</form></center>-->


</body>

</html>