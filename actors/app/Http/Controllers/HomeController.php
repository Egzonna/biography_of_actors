<?php

namespace App\Http\Controllers;

use App\Stars;
use Illuminate\Http\Request;

class HomeController extends Controller {

    /**
     * Show the application home page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index() {

        $get_all_stars = Stars::all();

        return view('home', ['stars' => $get_all_stars]);
    }
}
