<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Subscribe;
use App\Http\Requests\CreateSubscribeRequest;
use App\Http\Requests\UpdateSubscribeRequest;
use Illuminate\Http\Request;

use App\User;


class SubscribeController extends Controller {

	/**
	 * Display a listing of subscribe
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $subscribe = Subscribe::with("user")->get();

		return view('admin.subscribe.index', compact('subscribe'));
	}

	/**
	 * Show the form for creating a new subscribe
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    $user = User::pluck("name", "id")->prepend('Please select', null);

	    
	    return view('admin.subscribe.create', compact("user"));
	}

	/**
	 * Store a newly created subscribe in storage.
	 *
     * @param CreateSubscribeRequest|Request $request
	 */
	public function store(CreateSubscribeRequest $request)
	{
	    
		Subscribe::create($request->all());

		return redirect()->route(config('quickadmin.route').'.subscribe.index');
	}

	/**
	 * Show the form for editing the specified subscribe.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$subscribe = Subscribe::find($id);
	    $user = User::pluck("name", "id")->prepend('Please select', null);

	    
		return view('admin.subscribe.edit', compact('subscribe', "user"));
	}

	/**
	 * Update the specified subscribe in storage.
     * @param UpdateSubscribeRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateSubscribeRequest $request)
	{
		$subscribe = Subscribe::findOrFail($id);

        

		$subscribe->update($request->all());

		return redirect()->route(config('quickadmin.route').'.subscribe.index');
	}

	/**
	 * Remove the specified subscribe from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Subscribe::destroy($id);

		return redirect()->route(config('quickadmin.route').'.subscribe.index');
	}

    /**
     * Mass delete function from index page
     * @param Request $request
     *
     * @return mixed
     */
    public function massDelete(Request $request)
    {
        if ($request->get('toDelete') != 'mass') {
            $toDelete = json_decode($request->get('toDelete'));
            Subscribe::destroy($toDelete);
        } else {
            Subscribe::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.subscribe.index');
    }

}
