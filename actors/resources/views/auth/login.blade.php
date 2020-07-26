@extends('layouts.app')

@section('content')
    <link href="{{ asset('css/login.css') }}" rel="stylesheet">
    <div class="container">
        <h1>LARAVEL</h1>
        <h2>LOG IN</h2>
        <form method="POST" class="form" action="{{ route('login') }}">
            @csrf
            <fieldset class="form-fieldset ui-input __second">
                <input type="email" id="email" class="f @error('email') is-invalid @enderror"
                       name="email" value="{{ old('email') }}" required autocomplete="email" autofocus/>
                <label for="email">
                    <span>Email Address</span>
                </label>
                @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </fieldset>

            <fieldset class="form-fieldset ui-input __third">
                <input type="password" id="password" class="f @error('password') is-invalid @enderror"
                       name="password" required autocomplete="current-password"/>
                <label for="password">
                    <span>Password</span>
                </label>
                @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </fieldset>

            <div class="form-footer">
                <button type="submit" class="btn">
                    {{ __('Login') }}
                </button>
            </div>
        </form>
    </div>
@endsection
