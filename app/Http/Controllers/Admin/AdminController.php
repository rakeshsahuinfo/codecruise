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

        $data = DB::select("SELECT name, email, contact FROM user_query UNION SELECT name, email, contact FROM promo_session_registration");

        $csv = Writer::createFromString('');
        $csv->insertOne(['name', 'email', 'contact']);

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

        $data = DB::select("SELECT name, email, contact FROM user_query");

        $csv = Writer::createFromString('');
        $csv->insertOne(['name', 'email', 'contact']);

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

        $data = DB::select("SELECT name, email, contact FROM promo_session_registration where promo_session_id=$id");

        $csv = Writer::createFromString('');
        $csv->insertOne(['name', 'email', 'contact']);

        foreach ($data as $row) {
            // Cast object to array directly
            $csv->insertOne((array) $row);
        }

        return response()->streamDownload(function () use ($csv) {
            echo $csv->toString();
        }, 'promo_reg_details_' . Carbon::now()->format('Ymd_His') . '.csv');
    }
}
