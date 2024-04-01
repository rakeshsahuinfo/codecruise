<div class="container mt-5">
        <div class="row">
          <div class="col-12 col-lg-4" style="height:360px;">
            <div class="card shadow contact p-4">
              <div class="card-body">
                <h5 class="text-white">REGISTER FREE FOR PRE-PROGRAM ORIENTATION SESSION</h5>
                <p>Got a question about our programs and syllabus?<br>
                Want to know the duration and mode of training?<br>Intership and scope after training?<br>
                Attain this pre-program orientation session before starting the training
                </p>
              </div>
            </div>
          </div>
          <?php
          if(isset($_GET['fbclid'])){
              session_start();
              $_SESSION["utm_source"] = "Facebook";
          }
          if(isset($_GET['utm_source'])){
              session_start();
              $_SESSION["utm_source"] = $_GET['utm_source'];
          }
          ?>
          <div class="col-12 col-lg-8 p-4 forms">
            <div class="card shadow ">
            <div class="card-body">
             <form class="form" method="post" action="code/event_register.php">
              <div class="row">
                <div class="col-12 col-md-6 mt-3">
                  <label for="name">Name <span style="color:red;"><sup>*</sup></span></label></br>
                  <input style="padding-left:4px;" type="text" name="user_name" id="name" required placeholder="&nbsp;&nbsp;Name">
                  <input style="padding-left:4px;" type="hidden" name="utm_source" id="utm_source"  value="<?php echo $_SESSION["utm_source"];?>">
              </div>
                <div class="col-12 col-md-6 mt-3">
                  <label for="Email">Email <span style="color:red;"><sup>*</sup></span></label></br>
                  <input style="padding-left:4px;" type="email" name="user_email" id="Email" required placeholder="&nbsp;&nbsp;Email">
                </div>
                <div class="col-12 col-md-6 mt-3">
                  <label for="Contactus">Contact(WhatsApp No) <span style="color:red;"><sup>*</sup></span></label></br>
                  <input style="padding-left:4px;" type="text" name="user_contact" id="Conactus" required placeholder="&nbsp;&nbsp;Contact">
                </div>
                <div class="col-12 col-md-6 mt-3">
                  <label for="Comp">Stream & College Name <span style="color:red;"><sup>*</sup></span></label></br>
                  <input style="padding-left:4px;" type="text" name="stream_name" required id="Comp" placeholder="&nbsp;&nbsp;e.g. B.Sc or B.E or any other">
                </div>
                <div class="col-12 mt-3">
                  <label for="Comp">Passing Year <span style="color:red;"><sup>*</sup></span></label></br>
                  <input style="padding-left:4px;" type="text" name="passing_year" required id="Comp" placeholder="&nbsp;&nbsp;e.g. 2021-22 ">
                </div>
                <div class="col-12 mt-3">
                  <label for="Comp">Referred by <span style="color:red;"><sup>*</sup></span></label></br>
                  <input style="padding-left:4px;" type="text" name="referred_by" required id="Comp" placeholder="&nbsp;&nbsp;e.g. Prof. XXX or Friend">
                </div>
                <div class="col-12  mt-3">
                  <label for="help">Your Query</label></br>
                  <textarea rows="2" cols="70" id="help" name="user_query" placeholder="Any query type here..."></textarea>
                </div>
                <div class="col-12  mt-3">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </div>
             </form>
            </div>
            </div>
          </div>
        </div>
      </div> 