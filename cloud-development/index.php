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
    <?php include("../component/header.php"); ?>
    <!-- End Header -->

    <div class="container my-3">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-7 ">
                <div class="card car" data-aos="zoom-in">
                    <img src="../assets\img\topic\R.jfif" alt="" class="p-3">
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-5">
                <div class="card dis">
                    <h4 class="p-2"> CLOUD COMPUTING</h4>
                    <div class="card-body">
                        <p class="p-1 fs-5">
                            Small as well as large IT companies, follow the traditional methods to provide the IT infrastructure. That means for any IT company, we need a Server Room that is the basic need of IT companies.

                            In that server room, there should be a database server, mail server, networking, firewalls, routers, modem, switches, QPS (Query Per Second means how much queries or load will be handled by the server), configurable system, high net speed, and the maintenance engineers.

                            To establish such IT infrastructure, we need to spend lots of money.<br>
                              <ul class="int">
                                  <li> Introduction to Cloud Computing</li>
                                    <li>Introduction to AWS</li>
                                    <li>Introduction to Azure</li>
                                    <li>Introduction to Google Cloud</li>
                                   
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
                    <img src="../assets\img\topic\R.jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">INTRODUTION TO CLOUD COMPUTING</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets\img\topic\download (1).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">INTRODUTION TO AZURE DEVOPS</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow " data-aos="zoom-in-up">
                    <img src="../assets\img\IMGS\OIP (c).jfif" alt="" class="p-3 ">
                    <div class="card-tittle  px-4">INTRODUTION TO GOOGLE CLOUD</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card shadow" data-aos="zoom-in-up">
                    <img src="../assets\img\IMGS\OIP (12).jfif" alt="" class="p-3">
                    <div class="card-tittle px-4">INTRODUTION TO (AWS) Amazon Web Server</div>
                    <div class="card-body">

                    </div>
                </div>
            </div>

        </div>
        <a href="#contact" class="btn cont">Contact us</a>
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