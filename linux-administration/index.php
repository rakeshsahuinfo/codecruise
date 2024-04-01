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
                    <img src="../assets/img/IMGS/LINUX.jfif" alt="" class="p-3">
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-5">
                <div class="card dis">
                    <h4 class="p-4"> LINUX FUNDAMENTAL CERTIFICATION</h4>
                    <div class="card-body">
                        <p class="p-2">
                            A Linux® certification demonstrates a proficiency with a Linux operating system. Many organizations in the open source community offer Linux certifications to prepare IT professionals with knowledge relevant in a real-world environment.

                            As IT systems and workloads get more complex, the underlying architecture and operating system must be reliable, scalable, and performance driven. Linux has grown over the years to be the de facto standard for running highly available, reliable, and critical workloads—whether traditional or innovative—from bare metal to virtualization, cloud, and containers.
                      <ul class="int">
                          <li>Introduction to Linux</li>
                          <li>Flavours of Linux</li>
                          <li>Basic Linux Commands</li>
                          <li>Linux Administration</li>
                          <li>Shell Scripting</li>
                          <li>Linux EC2 on AWS</li>
                          <li>Docker Container</li>
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
                    <img src="../assets/img/IMGS/download (10).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">INTRODUTION TO LINUX</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/download (13).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">FLAVOURS OF LINUX</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/download (14).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">BASIC LINUX COMMANDS</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/OIP (27).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">LINUX ADMINISTRAION</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/download (16).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">SHELL SCRIPTING</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/download (15).jfif" alt="" class="p-3">
                    <div class="card-tittle  px-4">LINUX EC2 ON AWS</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/download (17).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">DOCKER CONTAINER</div>
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