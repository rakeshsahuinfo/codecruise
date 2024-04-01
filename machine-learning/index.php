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
                    <img src="../assets/img/slide/OIP (16).jfif" alt="" class="p-3">
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-5">
                <div class="card dis">
                    <h4 class="p-4"> Machine Learning</h4>
                    <div class="card-body">
                        <p class="p-2">
                        Machine Learning tutorial provides basic and advanced concepts of machine learning. Our machine learning tutorial is designed for students and working professionals.

Machine learning is a growing technology which enables computers to learn automatically from past data. Machine learning uses various algorithms for building mathematical models and making predictions using historical data or information. Currently, it is being used for various tasks such as image recognition, speech recognition, email filtering, Facebook auto-tagging, recommender system, and many more.
<ul class="int">
    <li>Linear Regression</li>
    <li>Logistic Regression</li>
    <li>Classification using Decision Trees</li>
    <li>Unsupervised Learning: Clustering</li>
    <li>Basics of NLP and Text Mining</li>
    <li>Case Study: Lead Scoring</li>

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
                    <img src="../assets/img/slide/index5.png" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">Linear Regression</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (20).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Logistic Regression</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (21).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">Classification using Decision Trees</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/download (2).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Unsupervised Learning: Clustering</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/download (3).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Basics of NLP and Text Mining</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (22).jfif" alt="" class="p-3">
                    <div class="card-tittle  px-4">Business Problem Solving</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets/img/slide/OIP (23).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">Case Study: Lead Scoring</div>
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