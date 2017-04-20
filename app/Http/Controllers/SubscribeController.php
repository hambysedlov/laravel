<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subscribe;
use Auth;
class SubscribeController extends Controller
{
    public function postIndex(){
		//dd($_POST);
		$str="";
		foreach($_POST as $one=>$value)
		{
			$id = (int) $one;
			
			
			if($id > 0){
				$str .= $id.",";
			}
		}
	echo $str;
	$obj = new Subscribe;
	$obj->user_id = Auth::user()->id;
	$obj->body = $str;
	$obj->status="new";
	$obj->save();
	return redirect('/home');
	}
}
