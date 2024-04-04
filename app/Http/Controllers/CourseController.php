<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\CourseModule;
use App\Models\CourseTechStack;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function index($id){
        $course_id=decrypt($id);
        $courseinfo=Course::find($course_id);
        $coursemodule=CourseModule::where('course_id',$course_id)->first();
        $coursetechstack=CourseTechStack::join('tech_stacks','tech_stacks.id','=','course_tech_stack.tech_stack_id')->where('course_tech_stack.course_id',$course_id)->select('tech_stacks.*')->get();
        return view('course',['courseinfo'=>$courseinfo,'coursemodule'=>$coursemodule,'coursetechstack'=>$coursetechstack]);
    }
}
