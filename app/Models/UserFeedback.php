<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserFeedback extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'email',
        'alternate_email',
        'contact',
        'user_type',
        'promo_session_id',
        'session_rating',
        'presentation_rating',
        'favorite_part',
        'recommended_topic',
        'recommend_other',
        'suggestion',
        'created_at',
        'updated_at',
    ];

    protected $table='user_feedback';

    public function promoSession()
    {
        return $this->belongsTo(PromoSession::class);
    }
}
