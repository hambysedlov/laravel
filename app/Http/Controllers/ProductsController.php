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
	public function getProduct($id = 0){
	$products = Products::Where('showhide','show')->Where('catalog_id',$id)->first();
	return view('products')->with('product',$products);}
	
}
