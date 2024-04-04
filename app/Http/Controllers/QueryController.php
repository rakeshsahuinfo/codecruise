<?php

namespace App\Http\Controllers;

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

            return back()->with(['msg' => 'Query submitted successfully', 'status' => 'success']);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Query not submitted try again', 'status' => 'danger']);
        }
    }
}
