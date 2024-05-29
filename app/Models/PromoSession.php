<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PromoSession extends Model
{
    use HasFactory;
    protected $table = 'promo_sessions';

    protected $fillable = ['promo_type', 'name', 'slug', 'session_alias', 'about_session', 'session_date', 'session_time', 'session_mode', 'session_venue', 'description', 'speaker', 'about_speaker', 'promo_banner', 'apply_message', 'stop_feedback', 'stop_registration', 'co_founder', 'issue_date', 'is_active', 'created_at', 'updated_at'];

    public function registrations()
    {
        return $this->hasMany(PromoSessionRegistration::class);
    }
}
