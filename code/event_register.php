<?php
$servername = "localhost";
$username = "durgeshpandey215_competemantra";
$password = "compete#11#mantra";
$dbname = "durgeshpandey215_competemantra";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$user_name=$_POST['user_name'];
$user_email=$_POST['user_email'];
$user_contact=$_POST['user_contact'];
$stream_name=$_POST['stream_name'];
$passing_year=$_POST['passing_year'];
$referred_by=$_POST['referred_by'];
$user_query=$_POST['user_query'];
$register_date=date("Y-m-d h:i:s");
$utm_source = $_POST["utm_source"];

$sql = "INSERT INTO skilladders_register (user_name, user_email, user_contact,stream_name,passing_year,referred_by,user_query,register_date, utm_source)
VALUES ('$user_name', '$user_email', '$user_contact','$stream_name','$passing_year','$referred_by','$user_query','$register_date', '$utm_source')";
//echo $sql;
if ($conn->query($sql) === TRUE) {
    session_unset();
    session_destroy();
  header("location:../index.php?status=success");
} else {
  header("location:../register.php?status=fail");
}

$conn->close();
?>