<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'description','course_duration','class_schedule','delivery_mode','course_fee','current_discount', 'course_banner', 'is_active','created_at','updated_at'];

    public function modules()
    {
        return $this->belongsToMany(Module::class, 'course_module_topics');
    }

    public function techStacks()
    {
        return $this->belongsToMany(TechStack::class, 'course_tech_stack');
    }

    protected $table="courses";
}
