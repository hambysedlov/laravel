<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Catalogs;
use App\Products;

class ProductsController extends Controller
{
    public function getCatalog($id = 0){
	$catalog = Catalogs::Where('showhide','show')->Where('id',$id)->first();
	$products = Products::Where('showhide','show')->Where('catalogs_id',$id)->get();
	//dd($products);
	return view('catalog')->with('catalog',$catalog)->with('products',$products);
	}
	public function getProduct($id = 0){
	$products = Products::Where('showhide','show')->Where('catalog_id',$id)->first();
	return view('products')->with('product',$products);}
	
}
