<form class="form" method="post" action="send_query.php">
    <div class="row">
        <h4>Send us a message</h4>
        <div class="col-12 col-md-6 mt-3">
            <label for="name">Name</label></br>
            <input type="text" name="name" id="name" placeholder="&nbsp;&nbsp;Name">
        </div>
        <div class="col-12 col-md-6 mt-3">
            <label for="Email">Email</label></br>
            <input type="email" name="email" id="Email" placeholder="&nbsp;&nbsp;Email">
        </div>
        <div class="col-12 col-md-6 mt-3">
            <label for="Contactus">Contact no</label></br>
            <input type="text" name="Contact" id="Conactus"
                placeholder="&nbsp;&nbsp;Contact">
        </div>
        <div class="col-12 col-md-6 mt-3">
            <label for="Comp">Company/College</label></br>
            <input type="text" name="comp" id="Comp"
                placeholder="&nbsp;&nbsp;Company/College">
        </div>
        <div class="col-12 mt-3">
            <label for="exampleCourse">Your Interest</label>
            <select class="form-select" aria-label="Default select example"
                id="exampleCourse">
                <option selected>....</option>
                <option value="CLOUD DEVELOPMENT">CLOUD DEVELOPMENT</option>
                <option value="CYBER SECURITY">CYBER SECURITY</option>
                <option value="DATA SCIENCE & DATA ANALYTICS">DATA SCIENCE & DATA
                    ANALYTICS</option>
                <option value="DBMS">DBMS</option>
                <option value="DEVOPS ENGINEERING">DEVOPS ENGINEERING</option>
                <option value="MEAN STACK DEVELOPMENT">MEAN STACK DEVELOPMENT</option>
                <option value="MERN STACK DEVELOPMENT">MERN STACK DEVELOPMENT</option>
                <option value="FULL STACK PHP DEVELOPMENT">FULL STACK PHP DEVELOPMENT
                </option>
                <option value="FULL STACK JAVA DEVELOPMENT">FULL STACK JAVA DEVELOPMENT
                </option>
                <option value="LINUX AND ADMINISTRATION">LINUX AND ADMINISTRATION
                </option>
                <option value="MACHINE LEARNING">MACHINE LEARNING</option>
                <option value="MOBILE APP DEVELOPMENT">MOBILE APP DEVELOPMENT</option>
                <option value="FULL STACK .NET DEVELOPMENT">FULL STACK .NET DEVELOPMENT
                </option>
                <option value="SOFTWARE TESTING">SOFTWARE TESTING</option>
                <option value="PROGRAMMING FUNDAMENTALS">PROGRAMMING FUNDAMENTALS
                </option>
                <option value="OTHERS">OTHERS</option>
            </select>
        </div>
        <div class="col-12  mt-3">
            <label for="help">Your Query</label></br>
            <textarea rows="5" cols="70" id="help" name="help"
                placeholder="Type Here..."></textarea>
        </div>
        <div class="col-12  mt-3">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form>