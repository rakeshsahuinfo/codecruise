<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="{{asset('common/assets/img/favicon.png')}}" type="image/x-icon">
    <title>CodeCruise-{{$psr->name}}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .certificate {
            width: 10.8in;
            /* Landscape */
            height: 7.2in;
            /* Landscape */
            background-image: url("{{public_path('/certificate/common.jpeg')}}");
            background-size: cover;
            position: relative;
        }

        .watermark {
            position: absolute;
            height: 400px;
            width: 400px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1; /* Ensure the image appears above other content */
        }

        .content {
            position: absolute;
            top: 25%;
            left: 8%;
            /* transform: translate(-50%, -50%); */
            color: #000;
        }

        .title {
            font-size: 35px;
            font-weight: bold;
            color: #007072;
            margin-bottom: 10px;
        }

        .sub-title {
            font-size: 26px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .sub-title-info {
            font-size: 20px;
            font-weight: bold;
            color: #007072;
            margin-bottom: 20px;
        }

        .name {
            font-size: 36px;
            text-transform: capitalize;
            margin-bottom: 10px;
        }

        .event {
            font-size: 18px;
            font-weight: 600;
            text-transform: uppercase;
            margin-bottom: 10px;
        }
        .about-event {
            font-size: 12px;
            font-weight: 400;
            text-transform: uppercase;
            margin-bottom: 100px;
        }

        .divider {
            margin-bottom: 10px;
        }
        .footer{
            width: 560px;
        }
        .footer td{
            height: 30px;
        }
        .issue{
            vertical-align: bottom;
            padding-bottom: 5px;
        }
        .date {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .signature {
            font-size: 18px;
            text-align: left;
        }
        .sign{
            vertical-align: bottom;
            text-align: left;
            padding-right: 20px;
        }
       
    </style>
</head>

<body>
    <div class="certificate">
        <img src="{{public_path('/common/assets/img/verify.png')}}" class="watermark">
        <div class="content">
            <div class="title">CERTIFICATE</div>
            <div class="sub-title">OF COMPLETION</div>
            <div class="sub-title-info">THIS CERTIFICATE IS AWARDED TO</div>
            <div class="name">{{ $psr->name }}</div>
            <div class="divider">
                <hr>
            </div>
            <div class="event">{{ $ps->session_alias }}</div>
            <div class="about-event">{{ $ps->about_session }}</div>
            <table class="footer">
                <tr>
                    <td class="issue">
                        Issued On
                    </td>
                    <td class="sign">
                        @if(empty($ps->co_founder))
                        <img src="{{public_path('/certificate/sanjay.png')}}">
                        @else
                        <img src="{{public_path('/certificate/'.$ps->co_founder.'.png')}}">
                        @endif
                    </td>
                    <td rowspan="2">
                        <img src="{{ public_path('qr_code/'.$psr->reg_code.'.svg') }}" />
                    </td>
                </tr>
                <tr>
                    <td class="date">
                        {!! preg_replace('/(?<=\d)(st|nd|rd|th)\b/', '<sup>$1</sup>', Carbon\Carbon::parse($ps->issue_date)->format('jS F, Y')) !!}
                    </td>
                    <td class="signature">
                        Director & Co-Founder
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>

</html>