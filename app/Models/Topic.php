<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'is_active','created_at','updated_at'];

    public function courses()
    {
        return $this->belongsToMany(Course::class, 'course_module_topics');
    }

    protected $table="topics";
}
