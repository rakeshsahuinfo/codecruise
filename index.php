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
  <main id="main">

    <section class="inner-page" style="height: 10%;">
        <?php
        if(isset($_GET['status']))
        {
        ?>
            <div class="container-fluid" id="con">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
              <strong>Congrats!</strong> You have registered for the pre-program orientation, we will send you the session link on your email and whatsapp number.<br>
              Thank you!!!
            </div>
        <?php
        }
        ?>
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="5000">
              <img src="assets/img/slide/slide-1.jpg" class="d-block img-fluid brightness" id="img1" alt="...">
              <div class="carousel-caption  d-md-block">
                <h3>SAIL SMOOTH IN TECH OCEAN</h3>
                <p class="d-none d-md-block">WE ARE CODE CRUISE</p>
              </div>
            </div>
            <div class="carousel-item" data-bs-interval="5000">
              <img src="assets/img/slide/online-course-gab92320ce_1920.jpg" class="d-block img-fluid brightness" id="img2" alt="...">
              <div class="carousel-caption d-md-block">
                <h3>COMPLETE TRAINING SOLUTION AT <BR>ONE PLACE</h3>
                <p class="d-none d-md-block">LEARN WITH THE PROFESSIONALS</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="assets/img/online-g83a52dded_1280.jpg" class="d-block img-fluid brightness" id="img3" alt="...">
              <div class="carousel-caption d-md-block">
                <h3>CORPORATE AND ON CAMPUS TRAINING</h3>
                <p class="d-none d-md-block">YOU HIRE AND WE WILL TRAIN</p>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
   <div class="container mt-5">
        <div class="row learns">
          <div class="col-12 col-lg-5" data-aos="fade-up">
        <img src="assets/img/slide/online-girl.jpg" alt="" id="imge">
          </div>
          <div class=" col-12 col-lg-7" data-aos="fade-up">
            <div class="row">
              <p class="p">LEARN ANYTHING</p>
              <h2>Benefits About Online and Offline Learning Expertise</h2>
              <div class="col-12">
                <div class="card learn">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-12 col-md-3 col-lg-2 ">
                        <img src="assets/img/logo/online-learning.png" alt="" >
  
                      </div>
                      <div class="col-12 col-md-9 col-lg-10">
                        <span class="head ml-2">Offline and Online Courses</span>
                        <p class="ml-2"> Get both Online and Offline as per your Requirements it will help to make busy schedule more convenient for learning and gain Knowledge</p>
  
                      </div>

                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 ">
                <div class="card learn">
                  <div class="card-body">                
                  <div class="row">
                      <div class="col-12 col-md-3 col-lg-2 ">
                      <img src="assets/img/logo/certificate.png" alt="" >
                      </div>
                      <div class="col-12 col-md-9 col-lg-10">
                        <span class="head ml-2">Earn A Certificates</span>
                        <p class="ml-2">Get a valid Certificates to show your Progress and take the high payment job easily</p>
  
                      </div>

                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 ">
                <div class="card learn">
                  <div class="card-body">
                  <div class="row">
                      <div class="col-12 col-md-3 col-lg-2">
                      <img src="assets/img/logo/expert (1).png" alt="" >
                      </div>
                      <div class="col-12 col-md-9 col-lg-10">
                        <span class="head ml-2">Learn with Expert</span>
                        <p class="ml-2">Get the personal attention with our expert Trainers & Faculty</p>
  
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php  include("component/team2.php"); ?>
      <?php include("component/contact.php"); ?>
    </section>
  </main><!-- End #main -->
  <!-- ======= Footer ======= -->
  <?php include("component/footer.php"); ?>
  <!-- End Footer -->
  <?php include("component/footasset2.php"); ?>
</body>

</html>