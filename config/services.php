<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'slack' => [
        'notifications' => [
            'bot_user_oauth_token' => env('SLACK_BOT_USER_OAUTH_TOKEN'),
            'channel' => env('SLACK_BOT_USER_DEFAULT_CHANNEL'),
        ],
    ],
    
    'google' => [
        'client_id' => '500627085557-lrac532npn65ca3h4v1s20uvq2fshd60.apps.googleusercontent.com',
        'client_secret' => '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',
        'redirect' => 'https://codecruise.in/feedback/auth/google/callback',
    ],

    'google_login' => [
        'client_id' => '500627085557-lrac532npn65ca3h4v1s20uvq2fshd60.apps.googleusercontent.com',
        'client_secret' => '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',
        'redirect' => 'https://codecruise.in/login/google/callback',
    ],

    // 'google' => [
    //     'client_id' => '500627085557-lrac532npn65ca3h4v1s20uvq2fshd60.apps.googleusercontent.com',
    //     'client_secret' => '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',
    //     'redirect' => 'http://localhost:8000/feedback/auth/google/callback',
    // ],

    // 'google_login' => [
    //     'client_id' => '500627085557-lrac532npn65ca3h4v1s20uvq2fshd60.apps.googleusercontent.com',
    //     'client_secret' => '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',
    //     'redirect' => 'http://localhost:8000/login/google/callback',
    // ],

];
