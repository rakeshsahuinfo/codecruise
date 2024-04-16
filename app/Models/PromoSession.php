<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PromoSession extends Model
{
    use HasFactory;
    protected $table = 'promo_sessions';

    protected $fillable = ['name','slug','description', 'promo_banner', 'is_active','created_at','updated_at'];

    public function registrations()
    {
        return $this->hasMany(PromoSessionRegistration::class);
    }
}
