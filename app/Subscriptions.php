<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Subscriptions extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'subscriptions';
    
    protected $fillable = [
          'fio',
          'phone',
          'contacts',
          'body',
          'status',
          'user_id'
    ];
    

    public static function boot()
    {
        parent::boot();

        Subscriptions::observe(new UserActionsObserver);
    }
    
    
    
    
}