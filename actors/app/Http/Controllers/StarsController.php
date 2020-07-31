<?php

namespace App\Http\Controllers;

use App\Stars;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StarsController extends Controller {


    /**
     * Show all stars
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index() {

        $allStars = Stars::all();
        return view('stars.index', ['stars' => $allStars]);
    }

    /**
     * Show one star
     *
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($id) {

        $star = Stars::find($id);
        return view('stars.show', ['star' => $star]);
    }

    /**
     * Show form create star
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create() {
        return view('stars.create');
    }

    /**
     * Save new article star
     *
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request) {

        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'description' => 'required',
            'photo' => 'required|image|mimes:jpeg,png,gif,svg,jpg|max:2048',
        ]);

        $img = $request->file('photo')->store('photo', 'public');

        $article = new Stars();
        $article->first_name = $request->input('first_name');
        $article->last_name = $request->input('last_name');
        $article->description = $request->input('description');
        $article->photo = $img;
        $article->save();

        return redirect()->route('home')->with('success', 'Article created successfully');
    }

    /**
     * Show edit form star
     *
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\View\View
     */
    public function edit($id) {
        $star = Stars::where('id', $id)->first();

        if (!$star) {
            return redirect()->route('home');
        }

        return view('stars.update', ['star' => $star]);
    }

    /**
     * Update article star
     *
     * @param Request $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id) {

        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'description' => 'required',
            'photo' => 'nullable',
        ]);

        $article = Stars::find($id);
        $article->first_name = $request->input('first_name');
        $article->last_name = $request->input('last_name');
        $article->description = $request->input('description');

        if ($request->file('photo')) {
            $img = $request->file('photo')->store('photo', 'public');
            $article->photo = $img;
        }
        $article->save();
        return redirect()->route('home')->with('success', 'Article updated successfully');

    }

    /**
     * Delete article star
     *
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id) {
        Stars::find($id)->delete();
        return redirect()->route('home')->with('success', 'Article deleted successfully');
    }
}
