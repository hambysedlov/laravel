<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subscribe;
use Auth;

class SubscribeController extends Controller
{
    public function postIndex(){
		//dd($_POST);
<<<<<<< HEAD
		$subs = Subscribe::where("user_id", Auth::user()->id)->first();
=======
		$subs = Subscribe::where("user_id",Auth::user()->id)->first();
>>>>>>> eec46347b778cee3c00b19e60b0e5a8bf8ffbd16
		
		$str="";
		foreach($_POST as $one=>$value)
		{
			$id = (int) $one;
			
			
			if($id > 0){
				$str .= $id.",";
			}
		}
<<<<<<< HEAD

=======
>>>>>>> eec46347b778cee3c00b19e60b0e5a8bf8ffbd16
	$obj = new Subscribe;
	$obj->user_id = Auth::user()->id;
	$obj->body = $str;
	$obj->status="new";
<<<<<<< HEAD

	if (isset($subs->id)) {
		$subs->user_id = Auth::user()->id;
		$subs->body = $str;
		$subs->status="new";
		$subs->save();
	}

	else $obj->save();
		return redirect('/home');
=======
	if (isset($subs->id)){
			$subs->user_id = Auth::user()->id;
	$subs->body = $str;
	$subs->status="new";
		$subs->save();
	}
	else $obj->save();
	return redirect('/home');
>>>>>>> eec46347b778cee3c00b19e60b0e5a8bf8ffbd16
	}
}
