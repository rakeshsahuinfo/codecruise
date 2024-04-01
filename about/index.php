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
            <h3 class="m-2">What is SkillAdders ?</h3>

          </div>
          <div class="card-body">
            <p class="fs-5">We create simplified and interactive learning experiences.

              Learning web development,Cloud computing ,operating system and Software testing should be easy to understand and available for everyone, everywhere!

              SkillAdders is a industry level training platform for web developers and others, covering all the aspects of each topic so that the Learners be industry ready.</p>
            <p class="fs-5">
              <b>SkillAdders</b> the training partner with <b>whizzactsolutions</b> provides skill development , PGP , Diploma and Certification programs in both online and offline mode.
              Training would be provided by our industrial experts
          </div>
          </p>

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
  <div class="container mt-4">
    <div class="row">
      <div class="col">
        <div class="card">
          <ul class="list-group">
            <li class="list-group-item"><a class="nav-link scrollto" href="../programming-fundamental">Programming Fundamentals</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../fullstack-python">Full Stack Python</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../software-testing">Software Testing</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../dbms">DBMS and DBA</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../net-development">.NET Development</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../fullstack-(mean)">Full Stack (MEAN)</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../devops-engineer">DevOps Engineer</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../fullstack-php">Full Stack PHP</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../java-development">Full Stack JAVA</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../fullstack-mern">Full Stack (MERN)</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../cloud-development">Cloud Development</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../linux-administration">Linux & Administration</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../mobailapp-development">Mobile App Development</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../data-science">Data Science</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../data-analysis">Data Analytics</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../machine-learning">AI & Machine Learning</a></li>
            <li class="list-group-item"><a class="nav-link scrollto" href="../cyber-security">Cyber Security</a></li>
          </ul>
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