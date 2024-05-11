@extends('layouts.admin.master')
@section('title','CODECRUISE | NEW PROMO SESSION')
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
                <h3 class="mt-4 text-uppercase">New promo Session</h3>

                <div class="action-container">
                    <a href="{{route('admin-promo-session')}}"
                        class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-eye mx-1'></i> All
                        Promo Sessions</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="{{route('admin-promo-session')}}">promo Sessions</a>
                    </li>
                    <li class="breadcrumb-item active">New Promo Sesion</li>
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
                        NEW PROMO SESSION
                    </div>
                    <div class="card-body">
                        <div class="col-md-8 offset-md-1">
                            <form id="create-property-amenity" method="POST" action="{{route('create-promo-session')}}"
                                enctype="multipart/form-data">
                                <div class="bp-list-wrapper">
                                    @csrf
                                    <div class="form-row form-row-2 px-3 py-2">
                                        <div class="form-group w-100  my-4">
                                            <label for="promo_type">Promotion type</label>
                                            <select name="promo_type" id="promo_type" class="selectpicker form-control"
                                                required>
                                                <option value="" selected>Select</option>
                                                <option value="session">promo-session</option>
                                                <option value="webinar">promo-webinar</option>
                                                <option value="eminar">promo-seminar</option>
                                                <option value="enroll">promo-enroll</option>
                                                <option value="event">promo-event</option>
                                            </select>
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="name">Title Name</label>
                                            <input type="text" class="form-control" name="name" id="name"
                                                onkeyup="createSlug(this.value)">
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="name">slug</label>
                                            <input type="text" class="form-control" name="slug" id="slug" readonly>
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="session_date">Session Date</label>
                                            <input type="date" class="form-control" name="session_date" id="session_date" required>
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="session_time">Session Time</label>
                                            <input type="text" class="form-control" name="session_time" id="session_time" required>
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="description">Description</label>
                                            <textarea class="form-control" name="description" id="description" cols="30"
                                                rows="25"></textarea>
                                        </div>

                                        <div class="form-group w-100  my-4">
                                            <label for="speaker">Speaker</label>
                                            <input type="text" class="form-control" name="speaker" id="speaker" required>
                                        </div>
                                        
                                        <div class="form-group w-100  my-4">
                                            <label for="about_speaker">About Speaker</label>
                                            <input type="text" class="form-control" name="about_speaker" id="about_speaker" required>
                                        </div>

                                        <div class="form-group w-100  my-4">
                                            <label for="promo_banner">Promo Banner</label>
                                            <input type="file" accept="image/*" class="form-control" name="promo_banner"
                                                id="promo_banner" required>
                                        </div>

                                        <div class="form-group w-100  my-4">
                                            <label for="seo_title">SEO Title</label>
                                            <input type="text" class="form-control" name="seo_title" id="seo_title">
                                        </div>

                                        <div class="form-group w-100  my-4">
                                            <label for="seo_description">SEO Description</label>
                                            <textarea type="text" class="form-control" name="seo_description"
                                                id="seo_description"> </textarea>
                                        </div>

                                        <div class="form-group w-100  my-4">
                                            <label for="seo_keyword">Keyword</label>
                                            <input type="text" class="form-control" name="seo_keyword" id="seo_keyword">
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="canonical">Canonical</label>
                                            <input type="text" class="form-control" name="canonical" id="canonical">
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="is_index">is Index</label>
                                            <input type="checkbox" name="is_index" id="is_index" value="1">
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="is_follow">is Follow</label>
                                            <input type="checkbox" name="is_follow" id="is_follow" value="1">
                                        </div>
                                        <div class="form-group w-100 my-4">
                                            <label for="is_active">Collect Message Option</label>
                                            <select class="selectpicker form-control" data-live-search="true"
                                                data-size="8" name="apply_message" id="apply_message" required>
                                                <option value="1" selected>Yes</option>
                                                <option value="0">No</option>
                                            </select>
                                        </div>

                                        <div class="form-group w-100 my-4">
                                            <label for="stop_feedback">Stop Feedback</label>
                                            <select class="selectpicker form-control" data-live-search="true"
                                                data-size="8" name="stop_feedback" id="stop_feedback" required>
                                                <option value="1">Yes</option>
                                                <option value="0" selected>No</option>
                                            </select>
                                        </div>

                                        <div class="form-group w-100 my-4">
                                            <label for="stop_registration">Stop Registrations</label>
                                            <select class="selectpicker form-control" data-live-search="true"
                                                data-size="8" name="stop_registration" id="stop_registration" required>
                                                <option value="1">Yes</option>
                                                <option value="0" selected>No</option>
                                            </select>
                                        </div>
                                        <div class="form-group w-100  my-4">
                                            <label for="co_founder">Signing Authority</label>
                                            <input type="text" class="form-control" name="co_founder" id="co_founder" required>
                                        </div>
                                        <div class="form-group w-100 my-4">
                                            <label for="is_active">Status</label>
                                            <select class="selectpicker form-control" data-live-search="true"
                                                data-size="8" name="is_active" id="is_active" required>
                                                <option value="1" selected>Active</option>
                                                <option value="0">Inactive</option>
                                            </select>
                                        </div>

                                        <div class="form-group text-center mt-2" style="width: 100%;">
                                            <button type="submit" class="btn btn-submit btn-dark w-100">CRAETE PROMO
                                                SESSION <i class="fas fa-arrow-right"></i></button>
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
<script>
    function slugify(text) {
        return text.toLowerCase().replace(/[^\w\s-]/g, '').replace(/[\s_]+/g, '-');
    }
    function createSlug(str) {
        var slug = slugify(str);
        $("#slug").val(slug);
    }
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