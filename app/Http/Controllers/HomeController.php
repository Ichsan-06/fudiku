<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    //     $this->middleware('role:ROLE_USER');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    // public function __construct()
    // {
    //    $table = DB::table('payment')->where( 'created_at', '<', Carbon::now())
    //                 ->get();
    //     DB::table('payment')->where( 'created_at', '<', Carbon::now())
    //                 ->delete();

    //     foreach ($table as $data) {
    //         DB::table('order')->where('code_order',$data->code_order)->delete();
    //     }
    // }
    public function index()
    {
        $categories = DB::table('category')->get();
        return view('home.index',['categories'=> $categories]);
    }

}
