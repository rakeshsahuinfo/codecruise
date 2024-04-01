<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CodeCruise</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Favicons -->
  <?php $page = 'about'; include("../component/headasset.php"); ?>
</head>

<body>
  <!-- ======= Top Bar ======= -->
  <?php include("../component/topbar.php");?>
  <!-- ======= Header ======= -->
  <?php  include("../component/header.php"); ?>
  <!-- End Header -->
  <div class="container my-4">
    <h1 class="text-center">About us</h1>
    <div class="row mt-3">
      <div class="col">
        <div class="card">
          <div class="card-tittle">
            <h3 class="m-2">What is Code Cruise ?</h3>

        </div>
          <div class="card-body">
          <p class="fs-5">
              <b>Code Cruise</b> provides Diploma Courses in nieche and in-demand industry skills in both online and offline mode. 
              We also provide certification assitance programs in leading technologies and platforms with the help of our industry experts.
            </p>
            <p class="fs-5">
              We create simplified and interactive learning experiences for learners. 
              So that learning latest and complex skills should be easy to understand and available for everyone and everywhere!
            </p>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-7">
        <div class="card">
          <div class="card-body">
            <img src="../assets\img\team\page_1.jpg" class="img-fluid" alt="">
          </div>
        </div>
      </div>
    </div>
  </div>
  <main id="main">
    <section class="inner-page">
      <?php include("../component/team.php"); ?>
      <?php include("../component/contact.php"); ?>
    </section>
  </main>
  <?php include("../component/footer.php"); ?>
  <?php include("../component/footasset.php"); ?>
</body>

</html>