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
            text-transform: uppercase;
            margin-bottom: 100px;
        }

        .divider {
            margin-bottom: 10px;
        }
        .footer{
            width: 460px;
        }
        .footer td{
            height: 30px;
        }
        .issue{
            vertical-align: bottom;
            padding-bottom: 5px;
        }
        .date {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .signature {
            font-size: 18px;
            text-align: right;
        }
        .sign{
            vertical-align: bottom;
            padding-bottom: 5px;
            text-align: right;
            padding-right: 20px;
        }
        .sign img{
            width: 150px;
            height: 80px;
        }

    </style>
</head>

<body>
    <div class="certificate">
        <div class="content">
            <div class="title">CERTIFICATE</div>
            <div class="sub-title">OF COMPLETION</div>
            <div class="sub-title-info">THIS CERTIFICATE IS AWARDED TO</div>
            <div class="name">{{ $psr->name }}</div>
            <div class="divider">
                <hr>
            </div>
            <div class="event"><strong>COURSE: </strong>{{ $ps->name }}</div>
            <table class="footer">
                <tr>
                    <td class="issue">
                        Issued On
                    </td>
                    <td class="sign">
                        <img src="{{public_path('/certificate/sanjay.png')}}">
                    </td>
                </tr>
                <tr>
                    <td class="date">
                        {{ \Carbon\Carbon::parse($ps->session_date)->format('d-m-Y') }}
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