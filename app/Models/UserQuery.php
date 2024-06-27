<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserQuery extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'user_query';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'query_for', 'reg_code', 'name', 'email', 'contact', 'company_college_name', 'course_ids', 'other_course', 'message', 'payment_proofs', 'admin_comment', 'status', 'created_at', 'updated_at'
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'course_ids' => 'array',
        'payment_proofs' => 'array',
    ];
}
