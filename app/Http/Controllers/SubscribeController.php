<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subscribe;
use Auth;

class SubscribeController extends Controller
{
    public function postIndex(){
		//dd($_POST);
		$subs = Subscribe::where("user_id", Auth::user()->id)->first();
		
		$str="";
		foreach($_POST as $one=>$value)
		{
			$id = (int) $one;
			
			
			if($id > 0){
				$str .= $id.",";
			}
		}

	$obj = new Subscribe;
	$obj->user_id = Auth::user()->id;
	$obj->body = $str;
	$obj->status="new";

	if (isset($subs->id)) {
		$subs->user_id = Auth::user()->id;
		$subs->body = $str;
		$subs->status="new";
		$subs->save();
	}

	else $obj->save();
		return redirect('/home');
	}
}
