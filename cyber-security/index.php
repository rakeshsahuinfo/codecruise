<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>CodeCruise</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->

    <!-- Google Fonts -->
    <?php $page = 'card'; include("../component/headasset.php"); ?>
</head>

<body>

    <!-- ======= Top Bar ======= -->
    <?php include("../component/topbar.php");?>

    <!-- ======= Header ======= -->
    <?php  include("../component/header.php"); ?>
    <!-- End Header -->

    <div class="container my-3">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-7 ">
                <div class="card car" data-aos="zoom-in">
                    <img src="../assets/img/slide/OIP (25).jfif" alt="" class="p-3">
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-5">
                <div class="card dis">
                    <h4 class="p-4"> Diploma in Cyber Security</h4>
                    <div class="card-body">
                        <p class="p-2">
                        Diploma in Cyber Security (DCS) is 6 months training and diploma program conducted both as a full-time regular program and also online program, based on eligibility of the student. This training & diploma program would lead to employment opportunities in the cyber security function of various industries & sectors. DCS Training program has been developed through inputs from the industry and experts in the field. Our faculty comprises of experienced trainers available permanently at the center and also subject matter experts as visiting faculty. 
     
                        <ul class="int">
                        <li>Fundamentals of Cybersecurity</li>
                        <li>Network Security</li>
                        <li>Database Security</li>
                        <li>Network Security</li>
                        <li>Database Security</li>
                        <li>Server Security</li>
                        <li>Mobile Application Security</li>
                        <li>Web Application Security</li>
                        </ul>



                        </p>
                        <a href="#" class="btn btn-md btn-outline-info COLOR" id="buy1" onclick="disablebtn()" data-bs-toggle="modal" data-bs-target="#staticBackdrop">QUERY</a>
                        <!-- Modal -->
                        <?php include("../component/query.php");?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container my-3" data-aos="zoom-out-down">
        <div class="card shadow Schedule">
            <div class="card-body">
                <div class="row ">
                    <div class="col-12 col-sm-6 col-md-4">
                        <p class="p">Program Duration</p>
                        <h4>6-8 Months</h4>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4">
                        <p class="p">Class Schedule</p>
                        <h4>2 to 3 hours</h4>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4">
                        <p class="p">Delivery Mode</p>
                        <h4>online and offline</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" id="col">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP.jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">Fundamentals of Cybersecurity</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (1).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Network Security</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (2).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">Database Security</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (3).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Server Security</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (4).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Mobile Application Security</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (5).jfif" alt="" class="p-3">
                    <div class="card-tittle  px-4">Web Application Security</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
        </div>
        <!-- <a href="#contact" class="btn cont">Contact us</a> -->
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