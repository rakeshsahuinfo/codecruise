<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\CourseModule;
use App\Models\CourseTechStack;
use App\Models\CourseType;
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
            $coursetype=CourseType::find($courseinfo->course_type_id);
            $coursemodule = CourseModule::where('course_id', $course_id)->first();
            $coursetechstack = CourseTechStack::join('tech_stacks', 'tech_stacks.id', '=', 'course_tech_stack.tech_stack_id')->where('course_tech_stack.course_id', $course_id)->select('tech_stacks.*')->get();
            return view('common.course', ['courseinfo' => $courseinfo,'coursetype'=>$coursetype, 'coursemodule' => $coursemodule, 'coursetechstack' => $coursetechstack]);
        } catch (Exception $e) {
            return back();
        }
    }

    public function courseByType($id){
        $course_type_id=decrypt($id);
        $course_type=CourseType::find($course_type_id);
        $course = Course::join('course_type','courses.course_type_id','=','course_type.id')->select('courses.*','course_type.name as course_type_name')->where('course_type_id',$course_type_id)->orderBy('name','asc')->get();
        return view('common.course-by-type',['course'=>$course,'course_type'=>$course_type]);
    }

    
    public function courseCatalog(){
        $coursetype=CourseType::all();
        $course = Course::join('course_type','courses.course_type_id','=','course_type.id')->select('courses.*','course_type.name as course_type_name')->orderBy('name','asc')->get();
        return view('common.course-catalog',['course'=>$course,'coursetype'=>$coursetype]);
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

    public function searchCourse(Request $request){
        $query = $request->input('query');
        // Perform your search logic here
        $results = Course::where('name', 'like', '%'.$query.'%')->limit(10)->get();
        if($results){
            foreach($results as $key=>$val){
                $results[$key]->url=route('course',encrypt(($val->id)));
            }
        }
        return response()->json($results);
    }
}
