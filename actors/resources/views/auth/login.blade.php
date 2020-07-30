@extends('layouts.app')

@section('content')
    <div class="bg-dark_gray">
        <div class="form_container">
            <h1>LARAVEL</h1>
            <h2>LOG IN</h2>
            <form method="POST" class="form" action="{{ route('login') }}">
                @csrf
                <div class="form-fieldset ui-input">
                    <label for="email">
                        <span>Email Address</span>
                    </label>
                    <input type="email" id="email" class="f @error('email') is-invalid @enderror"
                           name="email" value="{{ old('email') }}" required autocomplete="email" autofocus/>
                    @error('email')
                    <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                    @enderror
                </div>

                <div class="form-fieldset ui-input">
                    <label for="password">
                        <span>Password</span>
                    </label>
                    <input type="password" id="password" class="f @error('password') is-invalid @enderror"
                           name="password" required autocomplete="current-password"/>
                    @error('password')
                    <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                    @enderror
                </div>

                <div class="form-footer">
                    <button type="submit" class="btn">
                        {{ __('Login') }}
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
