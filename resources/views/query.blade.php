<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel"><img src="{{asset('assets/img/logo/SALOGO2.png')}}" class="img-fluid"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="send_query.php">
                    <div class="mb-3">
                        <label for="exampleInputName" class="form-label">Name</label>
                        <input type="name" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter your name">
                    </div>
                    
                    <div class="mb-3">
                        <label for="exampleInputContact" class="form-label">Contact</label>
                        <input type="text" class="form-control" id="exampleInputContact" placeholder="Phone number...">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail" class="form-label">Email</label>
                        <input type="name" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter your name">
                    </div>
                    <div class="mb-3">
                        <label for="exampleCourse" class="form-label">Your Interest</label>
                        <select class="form-select" aria-label="Default select example" id="exampleCourse">
                            <option selected>....</option>
                            <option value="CLOUD DEVELOPMENT">CLOUD DEVELOPMENT</option>
                            <option value="CYBER SECURITY">CYBER SECURITY</option>
                            <option value="DATA SCIENCE & DATA ANALYTICS">DATA SCIENCE & DATA ANALYTICS</option>
                            <option value="DBMS">DBMS</option>
                            <option value="DEVOPS ENGINEERING">DEVOPS ENGINEERING</option>
                            <option value="MEAN STACK DEVELOPMENT">MEAN STACK DEVELOPMENT</option>
                            <option value="MERN STACK DEVELOPMENT">MERN STACK DEVELOPMENT</option>
                            <option value="FULL STACK PHP DEVELOPMENT">FULL STACK PHP DEVELOPMENT</option>
                            <option value="FULL STACK JAVA DEVELOPMENT">FULL STACK JAVA DEVELOPMENT</option>
                            <option value="LINUX AND ADMINISTRATION">LINUX AND ADMINISTRATION</option>
                            <option value="MACHINE LEARNING">MACHINE LEARNING</option>
                            <option value="MOBILE APP DEVELOPMENT">MOBILE APP DEVELOPMENT</option>
                            <option value="FULL STACK .NET DEVELOPMENT">FULL STACK .NET DEVELOPMENT</option>
                            <option value="SOFTWARE TESTING">SOFTWARE TESTING</option>
                            <option value="PROGRAMMING FUNDAMENTALS">PROGRAMMING FUNDAMENTALS</option>
                            <option value="OTHERS">OTHERS</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleQuery" class="form-label">Your Query</label>
                        <textarea class="form-control" id="exampleQuery" aria-describedby="emailHelp" placeholder="Enter your Query"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</div>