<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\CourseModule;
use App\Models\CourseTechStack;
use Exception;
use PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;

class CourseController extends Controller
{
    public function index($id)
    {
        try {
            $course_id = decrypt($id);
            $courseinfo = Course::find($course_id);
            $coursemodule = CourseModule::where('course_id', $course_id)->first();
            $coursetechstack = CourseTechStack::join('tech_stacks', 'tech_stacks.id', '=', 'course_tech_stack.tech_stack_id')->where('course_tech_stack.course_id', $course_id)->select('tech_stacks.*')->get();
            return view('course', ['courseinfo' => $courseinfo, 'coursemodule' => $coursemodule, 'coursetechstack' => $coursetechstack]);
        } catch (Exception $e) {
            return back();
        }
    }

    public function downloadCourseinfo($id)
    {
        $course_id = decrypt($id);
        $courseinfo = Course::find($course_id);
        $coursemodule = CourseModule::where('course_id', $course_id)->first();
        $coursetechstack = CourseTechStack::join('tech_stacks', 'tech_stacks.id', '=', 'course_tech_stack.tech_stack_id')->where('course_tech_stack.course_id', $course_id)->select('tech_stacks.*')->get();
       
        $pdf = PDF::loadView('document.download-course-info',  ['courseinfo' => $courseinfo, 'coursemodule' => $coursemodule, 'coursetechstack' => $coursetechstack]);
        
        return Response::make($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' => 'inline; filename=CodeCruise('.$courseinfo->name.').pdf'
        ]);
        // return $pdf->download("CodeCruise(".$courseinfo->name.").pdf");
    }
}
