@extends('layouts.app')

@section('content')
    <div class="bg-dark_gray">
        <div class="form_container">
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
                <div class="form-fieldset ui-input">
                    <label for="first_name">
                        <span>Name of the Star</span>
                    </label>
                    <input type="text" id="first_name" name="first_name" value="{{$star->first_name}}"/>
                </div>

                <div class="form-fieldset ui-input">
                    <label for="last_name">
                        <span>Last Name of the Star</span>
                    </label>
                    <input type="text" id="last_name" name="last_name" value="{{$star->last_name}}"/>
                </div>

                <div class="form-fieldset ui-input">
                    <label for="description">
                        <span>Biography of the Star</span>
                    </label>
                    <textarea id="description" name="description">{{$star->description}}</textarea>
                </div>

                <div class="form-fieldset ui-input">
                    <label for="photo">
                        <span>Upload image</span>
                    </label>
                    <input type="file" id="photo" name="photo"/>
                </div>

                <div class="form-footer">
                    <button class="btn">Save article</button>
                </div>

            </form>
        </div>
    </div>
@endsection
