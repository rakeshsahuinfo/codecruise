<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseType extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'is_active','created_at','updated_at'];
    protected $table = 'course_type';
}
