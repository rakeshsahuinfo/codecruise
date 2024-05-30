<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Laravel\Socialite\Facades\Socialite;

class SocialiteServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        Socialite::extend('google_login', function ($app) {
            $config = $app['config']['services.google_login'];

            return Socialite::buildProvider(
                \Laravel\Socialite\Two\GoogleProvider::class, $config
            );
        });
    }
}
