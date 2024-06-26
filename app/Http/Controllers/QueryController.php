<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\Course;
use App\Models\CourseTechStack;
use App\Models\UserQuery;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class QueryController extends Controller
{
    public function saveQuery(Request $request)
    {
        try {
            $uq = new UserQuery();
            $query_for = $request->query_for;
            if ($query_for == "enrollment") {
                $checkuserquery = UserQuery::where('email', $request->input('email'))->where('contact', "+" . $request->input('phone_code') . " " . $request->input('contact'))->where('course_ids', json_encode($request->input('course_ids')))->first();
                if ($checkuserquery) {
                    return redirect('/')->with(['msg' => 'You form submitted successfully', 'status' => 'success']);
                }
            }
            $uq->query_for=$query_for;
            $uq->reg_code = Self::generateUniqueCode();
            $uq->name = $request->input('name');
            $uq->email = $request->input('email');
            $uq->contact = "+" . $request->input('phone_code') . " " . $request->input('contact');
            $uq->company_college_name = $request->input('company_college_name');
            $uq->course_ids = $request->input('course_ids'); // Assuming 'course_id' is the name of the input field for course_ids
            $uq->other_course = $request->input('other_course');
            $uq->message = $request->input('message');

            // Save the model to the database
            $uq->save();
            if ($query_for == "enrollment") {
                $course=Course::find($request->input('course_ids')[0]);
                if($course->apply_fee==1){
                    Self::acknowledgementMail($request->input('email'), $request->input('name'), $course->name);
                }
                return redirect('/payment-option/'.$course->slug)->with(['msg' => 'You form submitted successfully', 'status' => 'success']);
            }
            return redirect('/')->with(['msg' => 'You form submitted successfully', 'status' => 'success']);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Form not submitted, please try again', 'status' => 'danger']);
        }
    }

    public function enrollCourse($course_id)
    {
        try {
            // $courseinfo=Course::find(base64_decode($course_id));
            $courseinfo = Course::where('slug', $course_id)->first();
            $coursetechstack = CourseTechStack::join('tech_stacks', 'tech_stacks.id', '=', 'course_tech_stack.tech_stack_id')->where('course_tech_stack.course_id', $courseinfo->id)->select('tech_stacks.*')->get();
            $country = Country::all();
            return view('common.enroll-course', ['courseinfo' => $courseinfo, 'coursetechstack' => $coursetechstack, 'country' => $country]);
        } catch (Exception $ex) {
            return redirect('/')->with(['msg' => 'Query not submitted try again', 'status' => 'danger']);
        }
    }

    public function generateUniqueCode()
    {
        $code = "CCQ" . strtoupper(substr(sha1(microtime()), 0, 14));
        // Check if the generated SKU already exists in the database
        while (UserQuery::where('reg_code', $code)->exists()) {
            $code = "CCQ" . strtoupper(substr(sha1(microtime()), 0, 14));
        }
        return $code;
    }
    
    public static function acknowledgementMail($to_email, $to_name, $course_name){
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => 'https://control.msg91.com/api/v5/email/send',
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS =>'{
            "recipients": [
                {
                    "to": [
                        {
                            "email": "'.$to_email.'",
                            "name": "'.$to_name.'"
                        }
                    ],
                    "variables": {
                        "VAR1": "'.$to_name.'",
                        "VAR2": "'.$course_name.'",
                        "VAR3": "'.asset('/payment_option/payment_options.webp').'",
                        "VAR4": "Enrollment For Course '.$course_name.'",
                        "VAR5": "CodeCruise Powered By WhizzAct"
                    }
                }
            ],
            "from": {
                "email": "no-reply@codecruise.in"
            },
            "domain": "mail.codecruise.in",
            "template_id": "mail_for_confirmation_to_book_slot_v2"
        }',
          CURLOPT_HTTPHEADER => array(
            'Content-Type: application/json',
            'authkey: 420001AsQ1t1kED661904fdP1',
            'Cookie: PHPSESSID=oevvq2s57hii1j3qtff8idrn25'
          ),
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        // echo $response;
    }

    public function paymentOption($slug)
    {
        try {
            // $courseinfo=Course::find(base64_decode($course_id));
            $courseinfo = Course::where('slug', $slug)->first();
            return view('common.payment-option', ['courseinfo' => $courseinfo]);
        } catch (Exception $ex) {
            return redirect('/')->with(['msg' => 'Make payment to complete your enrollment process', 'status' => 'danger']);
        }
    }
}
