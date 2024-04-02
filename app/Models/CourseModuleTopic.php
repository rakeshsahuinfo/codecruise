<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseModuleTopic extends Model
{
    use HasFactory;
    protected $fillable = [
        'course_id',
        'module_id',
        'topic_id',
        'name',
        'no_of_lectures',
        'no_of_hours',
        'description',
        'is_active'
    ];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function module()
    {
        return $this->belongsTo(Module::class);
    }

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }
    protected $table="course_module_topics";
}
