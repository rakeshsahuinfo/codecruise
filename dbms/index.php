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
                    <img src="../assets/img/slide/database-gcc114c6dd_1920.jpg" alt="" class="p-3">
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-5">
                <div class="card dis">
                    <h4 class="p-4"> DBMS AND DBA</h4>
                    <div class="card-body">
                        <p class="p-2">
                            Database Management System or DBMS in short refers to the technology of storing and retrieving usersí data with utmost efficiency along with appropriate security measures. This tutorial explains the basics of DBMS such as its architecture, data models, data schemas, data independence, E-R model, relation model, relational database design, and storage and file structure and much more.
                        <ul>
                            <li>SQL</li>
                            <li>Advanced SQL </li>
                            <li>Oracle PL/SQL</li>
                            <li>Oracle DBA</li>
                            <li>NO-SQL</li>
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
                    <img src="../assets/img/IMGS/download (18).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4"> SQL</div>
                    <div class="card-body">
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/OIP (8).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">ADVANCED SQL</div>
                    <div class="card-body">
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/OIP (9).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">ORACLE PL/SQL</div>
                    <div class="card-body">
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/database-gcc114c6dd_1920.jpg" alt="" class="p-3">
                    <div class="card-tittle px-4">ORACLE DBA</div>
                    <div class="card-body">
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/IMGS/download (19).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">NO SQL</div>
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