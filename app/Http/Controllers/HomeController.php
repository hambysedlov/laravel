<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorie;
use App\Subscribe;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cats = Categorie::where('showhidle', 'show')->get();
		$subs = Subscribe::where('user_id', Auth::user()->id)->first();
		//dd($subs);
		if(isset($subs->id)){
		$arr = explode(',',$subs->body);
		$subscribes = [];
			foreach($arr as $one){
				$id = (int)$one;
				if($id>0){
				$subscribes[] = Categorie::find($one);	
				}
				
			}
		}
	else
		$subscribes = null;
        return view('home')->with('cats', $cats)->with('extra_header_class', 'catalog')->with('subscribes', $subscribes);
    }
	
}
