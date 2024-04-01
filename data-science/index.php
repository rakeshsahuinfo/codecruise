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
                    <img src="../assets/img/slide/OIP (14).jfif" alt="" class="p-3">
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-5">
                <div class="card dis">
                    <h4 class="p-4"> Data Science</h4>
                    <div class="card-body">
                        <p class="p-2">
                        Data science is an interdisciplinary field that uses scientific methods, processes, algorithms and systems to extract knowledge and insights from noisy, structured and unstructured data, and apply knowledge and actionable insights from data across a broad range of application domains. Data science is related to data mining, machine learning and big data.
                        </p>
                        <ul class="int">
                            <li>Data Toolkit</li>
                            <li>Machine Learning</li>
                            <li>Deep Learning</li>
                            <li>Natural Language Processing</li>
                            <li>Business Analytics</li>
                            <li>Business Intelligence/Data Analytics</li>
                            <li>Data Engineering</li>
                          
                        </ul>
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
                    <img src="../assets/img/slide/OIP (15).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">Data Toolkit</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (16).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Machine Learning</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (17).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">Deep Learning</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/download.jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Natural Language Processing</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (18).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Business Analytics</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (19).jfif" alt="" class="p-3">
                    <div class="card-tittle  px-4">Business Intelligence/Data Analytics</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/download (1).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Data Engineering</div>
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