<form id="contact-form"  method="post" action="{{route('save-query')}}" class="mt-5">
    @csrf
    <div class="row">
        <h4>Send us a message</h4>
        <div class="col-12 col-md-6 mt-3">
            <label for="name">Name</label></br>
            <input type="text" name="name" class="form-control" id="name" placeholder="&nbsp;&nbsp;Name">
        </div>
        <div class="col-12 col-md-6 mt-3">
            <label for="email">Email</label></br>
            <input type="email" name="email" class="form-control" id="email" placeholder="&nbsp;&nbsp;Email">
        </div>
        <div class="col-12 col-md-6 mt-3">
            <label for="contact">Contact no</label></br>
            <input type="text" class="form-control" name="contact" id="contact"
                placeholder="&nbsp;&nbsp;Contact">
        </div>
        <div class="col-12 col-md-6 mt-3">
            <label for="company_college_name">Company/College</label></br>
            <input type="text" name="company_college_name" class="form-control"  id="company_college_name"
                placeholder="&nbsp;&nbsp;Company/College">
        </div>
        <div class="col-12 mt-3">
            <label for="myexampleCourse">Your Interest {{--(use <strong>ctrl + select</strong> for multiple)--}}</label>
            <select class="form-control" name="course_ids[]" id="myexampleCourse" multiple>
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
        <div class="col-12 mt-3 text-center">
            <button type="submit" class="btn" style="background-color: #008080;color:white;width: 200px;">SUBMIT</button>
        </div>
    </div>
</form>