<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CodeCruise-{{$courseinfo->name}}</title>
    <link rel="shortcut icon" href="{{public_path('common/assets/img/favicon.png')}}" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .logo {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo img {
            width: 200px;
            height: auto;
        }

        .logo span {
            text-transform: uppercase;
            color: #007072;
            font-size: 12px;
        }

        .contact-info {
            text-align: center;
            margin-bottom: 20px;
        }

        .contact-info span {
            color: #007072;;
            font-size: 12px;
            font-weight: bold;
        }

        hr {
            border: none;
            border-top: 1px solid #ccc;
            margin: 20px 0;
        }

        .course-details {
            width: 95%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .course-details h3 {
            color:#007072;;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .course-details p {
            /* width: 80%; */
            color: #333;
            font-size: 16px;
            margin-bottom: 10px;
            text-align: justify;
        }

        .tech-stack {
            text-align: center;
            margin-top: 20px;
            color: #007072;
        }

        .tech-stack h3 {
            color: #007072;
            font-size: 20px;
            margin-top: 10;
            margin-bottom: 20px;
        }

        .tech-stack .tech-item {
            display: inline-block;
            margin: 40px 5px 5px 5px;
            border-right:solid 1px rgb(223, 221, 221);
            border-bottom:solid 2px rgb(223, 221, 221);
        }

        .tech-stack .tech-item img {
            width: 100px;
            height: 100px;
        }

        .tech-stack .tech-name {
            font-size: 14px;
            color: #333;
        }
    </style>
</head>

<body>
    <div class="logo">
        <img src="{{ public_path('common/assets/img/logo-white.png') }}" alt="Logo">
        <br>
        <span>Sail smooth in tech ocean</span>
    </div>

    <div class="contact-info">
        <span>A74, TechnoPark, Andheri, Mumbai. Phone: +91 80809 75897  | +91 70345 62050 Email: ask@codecruise.in</span>
    </div>

    <hr>

    <div class="course-details">
        <h3>{{$courseinfo->name}}</h3>
        <p>{!!$courseinfo->description!!}</p>

        @if($coursetechstack)
        <div class="tech-stack">
            <h3>Tech Stack To Be Covered</h3>
            <div>
                @foreach($coursetechstack as $ts)
                <div class="tech-item">
                    <img src="{{ public_path('tech_stack/' . $ts->tech_stack_logo) }}" alt="Tech Stack Logo">
                    <br>
                    <span class="tech-name">{{$ts->name}}</span>
                </div>
                @endforeach
            </div>
        </div>
        @endif

        <h3>@if($coursemodule) {{$coursemodule->name}} @endif</h3>
        <p>@if($coursemodule) {!!$coursemodule->description!!} @endif</p>
    </div>
</body>

</html>
