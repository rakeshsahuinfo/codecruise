<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>CodeCruise</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <?php  $page='home'; include("component/headasset2.php"); ?>
  <link href="assets/css/style.css"  rel="stylesheet">
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <?php include("component/topbar.php");?>

  <!-- ======= Header ======= -->
  <?php include("component/header1.php"); ?>
  <!-- End Header -->
    <?php
    if(isset($_GET['status']))
    {
    ?>
        <div class="container-fluid" id="con">
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
          <strong>Sorry</strong> There is some error during registration please try again.<br>
    
        </div>
    <?php
    }
    ?>
  <main id="main">
    <section class="inner-page">
    <div class="container-fluid mt-4">
        <table class="table table-hover table-bordered" style="width:100%;overflow-x: scroll;">
            <tr class="text-white bg-info">
                <th>No</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Stream</th>
                <th>Passing Year</th>
                <th>Referred By</th>
                <th>UTM</th>
                <th>Query</th>
            </tr>
         
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
    
    $sql = "SELECT * from skilladders_register";
    $result = $conn->query($sql);
    $x=0;
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
          $x++;
        ?>
            <tr>
                <td><?php echo $x;?></td>
                <td><?php echo $row["user_name"];?></td>
                <td><?php echo $row["user_contact"];?></td>
                <td><?php echo $row["user_email"];?></td>
                <td><?php echo $row["stream_name"];?></td>
                <td><?php echo $row["passing_year"];?></td>
                <td><?php echo $row["referred_by"];?></td>
                <td><?php echo $row["utm_source"];?></td>
                <td><?php echo $row["user_query"];?></td>
            </tr>
        <?php
      }
    } else {
      echo "0 results";
    }
    $conn->close();
    ?>
    </table>
    </div>
    </section>
  </main><!-- End #main -->
  <!-- ======= Footer ======= -->
  <?php include("component/footer.php"); ?>
  <!-- End Footer -->
  <?php include("component/footasset2.php"); ?>
</body>

</html>