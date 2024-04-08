<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseModule extends Model
{
    use HasFactory;
    protected $fillable = ['course_id', 'name', 'description', 'is_active','created_at','updated_at'];
    protected $table = 'course_modules';
    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
