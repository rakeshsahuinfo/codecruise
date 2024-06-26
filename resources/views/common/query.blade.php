<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel"><img src="{{asset('assets/img/logo/SALOGO2.png')}}"
                        class="img-fluid"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{route('save-query')}}">
                    @csrf
                    <div class="row">
                        <h4>Send us a message</h4>
                        <div class="col-12 col-md-6 mt-3">
                            <label for="name">Name</label></br>
                            <input type="text" name="name" class="form-control" id="name" placeholder="&nbsp;&nbsp;Name"
                                required>
                        </div>
                        <div class="col-12 col-md-6 mt-3">
                            <label for="email">Email</label></br>
                            <input type="email" name="email" class="form-control" id="email"
                                placeholder="&nbsp;&nbsp;Email" required>
                        </div>
                        <div class="col-12 col-md-6 mt-3">
                            <label for="contact">Contact no</label></br>
                            <input type="text" class="form-control" name="contact" id="usercontact"
                                placeholder="&nbsp;&nbsp;Contact">
                        </div>
                        <div class="col-12 col-md-6 mt-3">
                            <label for="company_college_name">Company/College</label></br>
                            <input type="text" name="company_college_name" class="form-control"
                                id="company_college_name" placeholder="&nbsp;&nbsp;Company/College">
                        </div>
                        <div class="col-12 mt-3">
                            <label for="myexampleCourse">Your Interest {{--(use <strong>ctrl + select</strong> for
                                multiple)--}}</label>
                            <select class="form-control" name="course_ids[]" id="myexampleCourse" multiple required>
                                @php
                                $courseTypes = App\Models\CourseType::where('is_active', 1)->get();
                                @endphp
                                @foreach($courseTypes as $courseType)
                                <optgroup label="{{ $courseType->name }}">
                                    @php
                                    $allcourses = App\Models\Course::where('course_type_id', $courseType->id)->get();
                                    @endphp
                                    @foreach($allcourses as $ac)
                                    <option value="{{ $ac->id }}">{{ $ac->name }}</option>
                                    @endforeach
                                </optgroup>
                                @endforeach
                                <option value="other">Other</option>
                            </select>
                            <div id="otherOption" style="display: none;">
                                <label for="otherCourse">Enter your option:</label>
                                <input type="text" class="form-control" id="otherCourse" name="other_course">
                            </div>
                        </div>
                        <div class="col-12  mt-3">
                            <label for="message">Your Query</label></br>
                            <textarea rows="5" cols="70" id="message" name="message"
                                placeholder="Type your message"></textarea>
                        </div>
                        <div class="col-12  mt-3">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>