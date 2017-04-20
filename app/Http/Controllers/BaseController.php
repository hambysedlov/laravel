<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Catalogs;

class BaseController extends Controller
{
    public function getIndex() {
		return view('index');
	}
}
