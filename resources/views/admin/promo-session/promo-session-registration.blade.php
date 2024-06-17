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
                <h3 class="mt-4 text-uppercase">User Registrations</h3>
                <div class="action-container">
                    <a href="{{route('download-promo-candidate',$proses->id)}}"
                        class="btn btn-dark btn-sm text-uppercase my-1 action-btn"><i class='fas fa-download mx-1'></i>
                        Download</a>
                </div>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="{{route('admin-dashboard')}}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="{{route('admin-promo-session')}}">Promo Sessions</a></li>
                    <li class="breadcrumb-item active">{{$proses->name}}</li>
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
                        {{$proses->name}} REGISTRATION
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
                                    <th>PaymentLink</th>
                                    <th>RazorpayPaymentID</th>
                                    <th>PaymentAmount</th>
                                    <th>PaymentStatus</th>
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
                                    <th>PaymentLink</th>
                                    <th>RazorpayPaymentID</th>
                                    <th>PaymentAmount</th>
                                    <th>PaymentStatus</th>
                                    <th>RegisterDate</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @if($prosesreg)
                                @foreach($prosesreg as $psr)
                                <tr>
                                    <td>
                                        <div class='d-flex'>
                                            <a href="{{route('edit-promo-session-registration',$psr->id)}}"
                                                title="Edit Participation Details" class='text-dark'><i
                                                    class='fas fa-edit'></i></a>
                                        </div>
                                        <div class="d-flex mt-2">
                                            <div class="form-check form-switch">
                                                <input class="form-check-input" type="checkbox"
                                                    data-psr-id="{{ $psr->id }}" role="switch"
                                                    id="flexSwitchCheckDefault{{ $psr->id }}" {{
                                                    $psr->completion_certificate == 1 ? 'checked' : '' }}
                                                onchange="allowCompletionCertificate({{ $psr->id }})">
                                                <label class="form-check-label"
                                                    for="flexSwitchCheckDefault{{$psr->id}}">Completion
                                                    Certificate</label>
                                            </div>
                                        </div>
                                        <div class='d-flex mt-2'>
                                            <a href="{{route('participation-certificate',$psr->id)}}" target="_new"
                                                title="Participation Certificate" class='text-info'><i
                                                    class='fas fa-certificate'></i></a>
                                            <a href="{{route('completion-certificate',$psr->id)}}" target="_new"
                                                title="Completion Certificate" class='text-primary mx-3'><i
                                                    class='fas fa-certificate'></i></a>
                                        </div>
                                    </td>
                                    <td>{{$psr->name}}</td>
                                    <td>{{$psr->email}}</td>
                                    <td>{{$psr->contact}}</td>
                                    <td>{{$psr->company_college_name}}</td>
                                    <td>{{$psr->message}}</td>
                                    <td>{{$psr->reg_code}}</td>
                                    <td>
                                        @if($proses->is_free==1)
                                        NA
                                        @else
                                        {{url('/promo/promo-payment/'.$proses->promo_type.'/'.$proses->slug.'/'.base64_encode($psr->reg_code))}}
                                        @endif
                                    </td>
                                    <td>{{$psr->razorpay_payment_id}}</td>
                                    <td>₹.{{$psr->payment_amount}}</td>
                                    <td>{{$psr->payment_status}}</td>
                                    <td>{{
                                        \Carbon\Carbon::parse($psr->created_at)->timezone('Asia/Kolkata')->format('d-M-y
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