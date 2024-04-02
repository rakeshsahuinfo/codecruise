<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseTechStack extends Model
{
    use HasFactory;
    protected $fillable = [
        'course_id',
        'tech_stack_id',
        'is_active'
    ];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function techStack()
    {
        return $this->belongsTo(TechStack::class);
    }
    protected $table ="course_tech_stack";
}
