<?php
namespace App\Providers\ViewComposers;
use Illuminate\Contracts\VieW\View;
use App\Catalogs;
class BaseComposer{
	public function compose(View $view){
		$catalogs = Catalogs::Where('showhide' , 'show')->get();
		$view->with('catalogs' , $catalogs);
		
	}
	
	
}
