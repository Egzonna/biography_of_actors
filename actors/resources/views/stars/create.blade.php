@extends('layouts.app')

@section('content')
    <div class="bg-dark_gray">
        <div class="form_container">
            <h2>Create new article</h2>
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form method="post" enctype="multipart/form-data">
                @csrf
                <div class="form-fieldset ui-input">
                    <label for="first_name">
                        <span>First name</span>
                    </label>
                    <input type="text" id="first_name" name="first_name" tabindex="0"/>
                </div>

                <div class="form-fieldset ui-input">
                    <label for="last_name">
                        <span>Last name</span>
                    </label>
                    <input type="text" id="last_name" name="last_name" tabindex="0"/>
                </div>

                <div class="form-fieldset ui-input">
                    <label for="description">
                        <span>Biography of the Star</span>
                    </label>
                    <textarea name="description" id="description" rows="3"></textarea>
                </div>

                <div class="form-fieldset ui-input">
                    <label for="photo">
                        <span>Upload image</span>
                    </label>
                    <input type="file" id="photo" name="photo" tabindex="0"/>
                </div>

                <div class="form-footer">
                    <button class="btn">Save the new article</button>
                </div>
            </form>
        </div>
    </div>
@endsection
