<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TechStack extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'tech_stack_logo', 'is_active'];

    public function courses()
    {
        return $this->belongsToMany(Course::class, 'course_tech_stack');
    }
    protected $table ="tech_stacks";
}
