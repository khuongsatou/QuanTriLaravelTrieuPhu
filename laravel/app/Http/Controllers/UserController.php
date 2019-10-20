<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function show($id)
    {
    	echo "show";
    	//return view('user.profile',['user'=>User::findOrFail($id)]);
    }

    public function index()
    {
    	echo "index";
    }
}
