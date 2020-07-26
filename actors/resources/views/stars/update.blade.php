@extends('layouts.app')

@section('content')
    <link href="{{ asset('css/update.css') }}" rel="stylesheet">
    <div class="container">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach($errors->all() as $error)
                        <li>{{$error}}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <h1>Laravel</h1>
        <h2>Update Article</h2>

        <form method="post" enctype="multipart/form-data">
            <input type="hidden" name="_method" value="put">
            @csrf
            <fieldset class="form-fieldset ui-input __first">
                <input type="text" id="first_name" name="first_name" tabindex="0" value="{{$star->first_name}}"/>
                <label for="first_name">
                    <span>Name of the Star</span>
                </label>
            </fieldset>

            <fieldset class="form-fieldset ui-input __first">
                <input type="text" id="last_name" name="last_name" tabindex="0" value="{{$star->last_name}}"/>
                <label for="last_name">
                    <span>Last Name of the Star</span>
                </label>
            </fieldset>

            <fieldset class="form-fieldset ui-input __first">
                <input type="text" id="description" name="description" tabindex="0"
                       value="{{$star->description}}"/>
                <label for="description">
                    <span>Biography of the Star</span>
                </label>
            </fieldset>

            <fieldset class="form-fieldset ui-input __first">
                <input type="file" id="photo" name="photo" tabindex="0"/>
                <label for="photo">
                    <span>Upload image</span>
                </label>
            </fieldset>

            <div class="form-footer">
                <button class="btn">Save article</button>
            </div>

        </form>
    </div>
@endsection
