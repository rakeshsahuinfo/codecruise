<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PromoSessionRegistration extends Model
{
    use HasFactory;
    protected $table = 'promo_session_registration';

    protected $fillable = ['reg_code', 'name', 'email', 'contact', 'company_college_name', 'promo_session_id', 'message', 'completion_certificate', 'created_at', 'updated_at'];

    public function promoSession()
    {
        return $this->belongsTo(PromoSession::class);
    }
}
