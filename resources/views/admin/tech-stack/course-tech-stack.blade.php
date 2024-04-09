@extends('layouts.admin.master')
@section('title','CODECRUISE | TECH STACK')
@section('headasset')
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
                <h3 class="mt-4 text-uppercase">Course Tech Stack</h3>
                <div class="action-container">
                    <a href="{{route('new-tech-stack')}}" class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-plus mx-1'></i> New Tech Stack</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-tech-stack')}}">Dashboard</a></li>
                    <li class="breadcrumb-item active">Tech Stack</li>
                </ol>
                <div class="card mb-4 {{session('msg')?'':'d-none'}}">
                    <div class="alert {{session('status')?'alert-'.session('status'):''}} alert-dismissible">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        {{session('msg')?session('msg'):''}}
                    </div>
                </div>
              
                <div class="card mb-4">
                    <div class="card-header text-uppercase">
                        <i class="fas fa-table me-1"></i>
                        UPDATE COURSE TECH STACKS FOR <strong>{{$course->name}}</strong>
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Logo</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Action</th>
                                    <th>Name</th>
                                    <th>Logo</th>
                                    <th>Status</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($techstack)
                                @foreach($techstack as $ts)
                                @php 
                                $cts=App\Models\CourseTechStack::where('course_id',$course->id)->where('tech_stack_id',$ts->id)->first();
                                @endphp
                                <tr>
                                    <td>
                                        <input class="mx-4 my-4 manage_tech-stack" data-course-id="{{$course->id}}" data-tech-stack-id="{{$ts->id}}" type="checkbox" {{$cts?"checked":""}}>
                                    </td>
                                    <td>{{$ts->name}}</td>
                                    <td>
                                        <img class="img-fluid" width="120" height="120" src="{{ asset('tech_stack/' . $ts->tech_stack_logo) }}" alt="Tech Stack Logo">
                                    </td>
                                    <td>{{$ts->is_active==1?"Active":"Inactive"}}</td>
                                </tr>
                                @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
        @include('admin.footer')
    </div>
</div>
@stop
@section('jsscript')
<script>
    $(document).ready(function () {
        var csrfToken = '{{ csrf_token() }}';
        $('.manage_tech-stack').on('change', function () {
            var opt = "";
            var course_id=$(this).data('course-id');
            var tech_stack_id = $(this).data('tech-stack-id');
           
            if ($(this).is(':checked')) {
                opt = "add";

            } else {
                opt = "remove";
            }
            $.ajax({
                url: "{{route('admin-course-assign-tech-stack')}}",
                type: 'POST',
                data: { "_token": csrfToken,"course_id":course_id, "tech_stack_id": tech_stack_id,'opt': opt  },
                headers: {
                    'X-CSRF-TOKEN': csrfToken,
                },
                success: function (response) {
                    if(response.msg==="success"){
                        alert("Tech Stack Updated")
                        location.reload();
                    }
                    if(response.msg==="fail"){
                        alert("Not Updated");
                        location.reload();
                    }
                },
                error: function (error) {
                    // Handle the error response
                    console.error('Error:', error);
                }
            });
        });
    });

</script>
@stop