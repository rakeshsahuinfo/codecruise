@extends('layouts.admin.master')
@section('title','CODECRUISE | EDIT ENROLLMENT')
@section('headasset')
<link href="{{asset('admin/assets/editor/Content/cleditor/jquery.cleditor.css')}}" rel="stylesheet" type="text/css" />
<link href="{{asset('admin/assets/editor/Content/Site.css" rel="stylesheet')}}" type="text/css" />
<link href="{{asset('admin/assets/editor/Content/cleditor/jquery.cleditor.css')}}" rel="stylesheet" type="text/css" />
<link href="{{asset('admin/assets/editor/Content/Site.css" rel="stylesheet')}}" type="text/css" />
@stop
@section('content')
@include('admin.top-nav')
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        @include('admin.nav')

    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h3 class="mt-4 text-uppercase">Edit Enrollment</h3>

                <div class="action-container">
                    <a href="{{route('show-course-enrollment',$userquery->course_ids[0])}}"
                        class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-eye mx-1'></i>
                        COURSE ENROLLMENT</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="{{route('admin-course')}}">Course</a></li>
                    <li class="breadcrumb-item active"><a href="{{route('show-course-enrollment',$userquery->course_ids[0])}}">Course Enrollment</a></li>
                    <li class="breadcrumb-item active">Edit</li>
                </ol>
                <div class="card mb-4 {{session('msg')?'':'d-none'}}">
                    <div class="alert {{session('status')?'alert-'.session('status'):''}} alert-dismissible">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        {{session('msg')?session('msg'):''}}
                    </div>
                </div>

                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        EDIT ENROLLMENT FOR COURSE {{strtoupper($course->name)}}
                    </div>
                    <div class="card-body">
                        <div class="col-md-8 offset-md-1">
                            <form id="update-course-enrollment" method="POST" action="{{route('update-course-enrollment')}}"
                                enctype="multipart/form-data">
                                <div class="bp-list-wrapper">
                                    @csrf
                                    <div class="form-row form-row-2 px-3 py-2">
                                        <input type="hidden" name="user_query_id" value="{{$userquery->id}}">
                                        
                                        <div class="form-group w-100  my-4">
                                            <label for="name">Title Name</label>
                                            <input type="text" class="form-control" name="name" id="name"
                                                value="{{$userquery->name}}">
                                        </div>
                                        
                                        <div class="form-group w-100  my-4">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" name="email" id="email" value="{{$userquery->email}}" required>
                                        </div>
                                        
                                        <div class="form-group w-100  my-4">
                                            <label for="contact">Contact</label>
                                            <input type="text" class="form-control" name="contact" id="contact" value="{{$userquery->contact}}" required>
                                        </div>

                                        <div class="form-group w-100  my-4">
                                            <label for="company_college_name">Colleg/Company Name</label>
                                            <input type="text" class="form-control" name="company_college_name"
                                                id="company_college_name" value="{{$userquery->company_college_name}}">
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="admin_comment">Admin Comment</label>
                                            <textarea type="text" class="form-control" name="admin_comment"
                                                id="admin_comment"> {{$userquery->admin_comment}}</textarea>
                                        </div>
                                        <div class="form-group w-100 my-4">
                                            <label for="status">Status</label>
                                            <select class="selectpicker form-control" data-live-search="true"
                                                data-size="8" name="status" id="status">
                                                @foreach($status as $sts)
                                                <option value="{{$sts}}" {{$userquery->status==$sts?"selected":""}}>{{$sts}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="payment_proofs">Payment Proofs</label>
                                            <input type="file" id="payment_proofs"  class="form-control" name="payment_proofs[]" multiple>
                                        </div>
                                        <div class="form-group text-center mt-2" style="width: 100%;">
                                            <button type="submit" class="btn btn-submit btn-dark w-100">UPDATE ENROLLMENT <i class="fas fa-arrow-right"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        @include('admin.footer')
    </div>
</div>
@stop
@section('jsscript')
<script src="{{asset('admin/assets/editor/Scripts/jquery-1.6.3.js')}}" type="text/javascript"></script>
<script src="{{asset('admin/assets/editor/Scripts/jquery.cleditor.js')}}" type="text/javascript"></script>

<script type="text/javascript">

    $(document).ready(function () {
        var options = {
            width: "100%",
            height: 500,
            controls: "bold italic underline strikethrough subscript superscript | font size " +
                "style | color highlight removeformat | bullets numbering | outdent " +
                "indent | alignleft center alignright justify | undo redo | " +
                "rule link image unlink | cut copy paste pastetext | print source"
        };

        var editor = $("#description").cleditor(options)[0];
    });
</script>
{{--
<script src="https://cdn.tiny.cloud/1/qct6i34mva10zv33t1mg214nd0ys74jfca2vuxzp6zajhtvl/tinymce/7/tinymce.min.js"
    referrerpolicy="origin"></script>

<script>
    tinymce.init({
        selector: '#description',
        plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage advtemplate ai mentions tinycomments tableofcontents footnotes mergetags autocorrect typography inlinecss markdown',
        toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
        tinycomments_mode: 'embedded',
        tinycomments_author: 'Author name',
        mergetags_list: [
            { value: 'First.Name', title: 'First Name' },
            { value: 'Email', title: 'Email' },
        ],
        ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant")),
    });
</script>
--}}
@stop