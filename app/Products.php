<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Products extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'products';
    
    protected $fillable = [
          'name',
          'description',
          'image',
          'showhide',
          'price',
          'user_id',
          'catalogs_id'
    ];
    
    public static $showhide = ["show" => "show", "hide" => "hide"];


    public static function boot()
    {
        parent::boot();

        Products::observe(new UserActionsObserver);
    }
    
    public function user()
    {
        return $this->hasOne('App\User', 'id', 'user_id');
    }


    public function catalogs()
    {
        return $this->belongsTo('App\Catalogs', 'catalogs_id', 'id');
    }


    
    
    
}