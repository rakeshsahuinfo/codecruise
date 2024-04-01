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
    <section class="inner-page" style="height: 10%;">
      <?php include("component/register.php"); ?>
    </section>
  </main><!-- End #main -->
  <!-- ======= Footer ======= -->
  <?php include("component/footer.php"); ?>
  <!-- End Footer -->
  <?php include("component/footasset2.php"); ?>
</body>

</html>