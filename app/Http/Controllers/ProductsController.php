<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Catalogs;

class ProductsController extends Controller
{
    public function getCatalog($id = 0){
	$catalog = Catalogs::Where('showhide','show')->Where('id',$id)->first();
	return view('catalog')->with('catalog',$catalog);
	}
}
