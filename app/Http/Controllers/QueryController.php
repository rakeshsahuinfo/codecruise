<?php

namespace App\Http\Controllers;

use App\Models\Country;
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
            $uq->contact = "+".$request->input('phone_code')." ".$request->input('contact');
            $uq->company_college_name = $request->input('company_college_name');
            $uq->course_ids = $request->input('course_ids'); // Assuming 'course_id' is the name of the input field for course_ids
            $uq->other_course = $request->input('other_course');
            $uq->message = $request->input('message');

            // Save the model to the database
            $uq->save();

            return redirect('/')->with(['msg' => 'You form submitted successfully', 'status' => 'success']);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Form not submitted, please try again', 'status' => 'danger']);
        }
    }

    public function enrollCourse($course_id){
        try {
            // $courseinfo=Course::find(base64_decode($course_id));
            $courseinfo=Course::where('slug',$course_id)->first();
            $coursetechstack = CourseTechStack::join('tech_stacks', 'tech_stacks.id', '=', 'course_tech_stack.tech_stack_id')->where('course_tech_stack.course_id', base64_decode($course_id))->select('tech_stacks.*')->get();
            $country=Country::all();
            return view('common.enroll-course',['courseinfo'=>$courseinfo,'coursetechstack'=>$coursetechstack,'country'=>$country]);
        } catch (Exception $ex) {
            return redirect('/')->with(['msg' => 'Query not submitted try again', 'status' => 'danger']);
        }
    }
}
