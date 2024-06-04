<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PromoSessionRegistration;
use App\Models\User;
use App\Models\UserQuery;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Log;
use League\Csv\Writer;

class AdminController extends Controller
{
    public function adminLogin()
    {
        return view('admin.login');
    }

    public function signIn(Request $request)
    {
        // return $request;
        $credentials = ['email' => $request->email, 'password' => $request->password];
        $user = User::where('email', $request->email)->first();
        if (!$user) {
            return redirect()->back()->withInput()->with(['msg' => 'Login Failed', 'status' => 'danger']);
        } else {

            if (auth()->attempt($credentials)) {
                return redirect('/admin/dashboard')->with(['msg' => 'Logged in', 'status' => 'success']);
            } else {
                return redirect()->back()->withInput()->with(['msg' => 'Login Failed', 'status' => 'danger']);
            }
        }
    }

    public function signOut()
    {
        auth()->logout();
        return redirect('/admin-login')->with(['msg' => 'Logged out', 'status' => 'success']);
    }

    public function dashboard()
    {
        try {
            $uq = UserQuery::orderBy('created_at', 'desc')->get();
            return view('admin.dashboard', ['user_query' => $uq]);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }

    //Download
    public function downloadRegCandidate()
    {
        // $data = DB::select("SELECT name, email, contact FROM (SELECT name, email, contact, created_at FROM user_query UNION SELECT name, email, contact, created_at FROM promo_session_registration) AS combined ORDER BY created_at ASC");

        $data = DB::select("SELECT name, email, contact, company_college_name, message, created_at FROM user_query UNION SELECT name, email, contact, company_college_name, message, created_at FROM promo_session_registration order by created_at asc");

        $csv = Writer::createFromString('');
        $csv->insertOne(['name', 'email', 'contact', 'background', 'message']);

        foreach ($data as $row) {
            // Cast object to array directly
            $csv->insertOne((array) $row);
        }

        return response()->streamDownload(function () use ($csv) {
            echo $csv->toString();
        }, 'all_reg_details_' . Carbon::now()->format('Ymd_His') . '.csv');
    }

    public function downloadInquiryCandidate()
    {

        $data = DB::select("SELECT name, email, contact, company_college_name, message FROM user_query");

        $csv = Writer::createFromString('');
        $csv->insertOne(['name', 'email', 'contact', 'background', 'message']);

        foreach ($data as $row) {
            // Cast object to array directly
            $csv->insertOne((array) $row);
        }

        return response()->streamDownload(function () use ($csv) {
            echo $csv->toString();
        }, 'inquiry_reg_details_' . Carbon::now()->format('Ymd_His') . '.csv');
    }

    public function downloadPromoCandidate($id)
    {

        $data = DB::select("SELECT name, email, contact, company_college_name, message FROM promo_session_registration where promo_session_id=$id");

        $csv = Writer::createFromString('');
        $csv->insertOne(['name', 'email', 'contact', 'background', 'message']);

        foreach ($data as $row) {
            // Cast object to array directly
            $csv->insertOne((array) $row);
        }

        return response()->streamDownload(function () use ($csv) {
            echo $csv->toString();
        }, 'promo_reg_details_' . Carbon::now()->format('Ymd_His') . '.csv');
    }

    public static function  currency_format($number)
    {
        $num = floor($number);
        // $decimalPart = round(($number - $num), 2);
        // if ($decimalPart == 0) {
        //     $decimalPart = "0.00";
        // }
        // if ($decimalPart > 0 && (($decimalPart*100)%10) ==0) {
        //     $decimalPart = $decimalPart."0";
        // }
        $decimalPart = "";
        $explrestunits = "";
        if (strlen($num) > 3) {
            $lastthree = substr($num, strlen($num) - 3, strlen($num));
            $restunits = substr($num, 0, strlen($num) - 3);
            $restunits = (strlen($restunits) % 2 == 1) ? "0" . $restunits : $restunits;
            $expunit = str_split($restunits, 2);
            for ($i = 0; $i < sizeof($expunit); $i++) {

                if ($i == 0) {
                    $explrestunits .= (int)$expunit[$i] . ",";
                } else {
                    $explrestunits .= $expunit[$i] . ",";
                }
            }
            $thecash = $explrestunits . $lastthree;
        } else {
            $thecash = $num;
        }
        return $thecash . substr(strval($decimalPart), 1);
    }
}
