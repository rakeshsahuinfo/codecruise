@extends('layouts.admin.master')
@section('title','Admin Home')
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
                <h3 class="mt-4 text-uppercase">Course Enrollment</h3>
                <div class="action-container">
                    <a href="{{route('download-enrolled-candidate',$course->id)}}"
                        class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-download mx-1'></i>
                        Download</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="{{route('admin-course')}}">Course</a></li>
                    <li class="breadcrumb-item active">{{$course->name}}</li>
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
                        {{$course->name}} ENROLLMENT
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>Candidate</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                    <th>Background</th>
                                    <th>Message</th>
                                    <th>RegCode</th>
                                    <th>RegisterDate</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Action</th>
                                    <th>Candidate</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                    <th>Background</th>
                                    <th>Message</th>
                                    <th>RegCode</th>
                                    <th>RegisterDate</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($userquery)
                                @foreach($userquery as $uq)
                                <tr>
                                    <td>
                                        <div class='d-flex'>
                                            <a href="{{route('edit-promo-session-registration',$uq->id)}}"
                                                title="Edit Participation Details" class='text-dark'><i
                                                    class='fas fa-edit'></i></a>
                                        </div>
                                    </td>
                                    <td>{{$uq->name}}</td>
                                    <td>{{$uq->email}}</td>
                                    <td>{{$uq->contact}}</td>
                                    <td>{{$uq->company_college_name}}</td>
                                    <td>{{$uq->message}}</td>
                                    <td>{{$uq->reg_code}}</td>
                                    <td>{{
                                        \Carbon\Carbon::parse($uq->created_at)->timezone('Asia/Kolkata')->format('d-M-y
                                        h:i A') }}</td>
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
    function allowCompletionCertificate(psrId) {
        var checkbox = document.getElementById('flexSwitchCheckDefault' + psrId);
        var isChecked = checkbox.checked ? 1 : 0;

        $.ajax({
            url: "{{route('issue-completion-certificate')}}", // Adjust the URL as needed
            type: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                psr_id: psrId,
                completion_certificate: isChecked
            },
            success: function (response) {
                if (response.message === 'success') {
                    alert("Updated");
                    location.reload();
                }
                if (response.message === 'fail') {
                    alert("Error");
                    location.reload();
                }
            },
            error: function (xhr, status, error) {
                console.error('Error updating completion certificate status:', error);
            }
        });
    }

</script>

@stop