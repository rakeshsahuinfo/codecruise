<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\CourseTechStack;
use App\Models\UserQuery;
use Exception;
use Illuminate\Http\Request;

class QueryController extends Controller
{
    public function saveQuery(Request $request)
    {
        try {
            $uq = new UserQuery();
            $uq->name = $request->input('name');
            $uq->email = $request->input('email');
            $uq->contact = $request->input('contact');
            $uq->company_college_name = $request->input('company_college_name');
            $uq->course_ids = $request->input('course_ids'); // Assuming 'course_id' is the name of the input field for course_ids
            $uq->other_course = $request->input('other_course');
            $uq->message = $request->input('message');

            // Save the model to the database
            $uq->save();

            return redirect('/')->with(['msg' => 'Query submitted successfully', 'status' => 'success']);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Query not submitted try again', 'status' => 'danger']);
        }
    }

    public function enrollCourse($course_id){
        try {
            $courseinfo=Course::find(decrypt($course_id));
            $coursetechstack = CourseTechStack::join('tech_stacks', 'tech_stacks.id', '=', 'course_tech_stack.tech_stack_id')->where('course_tech_stack.course_id', decrypt($course_id))->select('tech_stacks.*')->get();
            return view('common.enroll-course',['courseinfo'=>$courseinfo,'coursetechstack'=>$coursetechstack]);
        } catch (Exception $ex) {
            return redirect('/')->with(['msg' => 'Query not submitted try again', 'status' => 'danger']);
        }
    }
}
