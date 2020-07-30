@extends('layouts.app')

@section('content')
    <link href="{{ asset('css/show.css') }}" rel="stylesheet">
    <div class="container show_artist_bio">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2>{{ $star->first_name }} {{ $star->last_name }}</h2>
            <div class="row">
                    <div class="card mb-3">
                        <img src="{{ url("storage/".$star->photo) }}" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"> {{ $star->description }}</p>
                        </div>
                        <div class="text-center buttons">
                            <a href="{{ route('update', ['id' => $star->id]) }}"
                               class="btn edit">Edit</a>
                            <a href="{{ route('destroy', ['id' => $star->id]) }}"
                               class="btn delete">Delete</a>
                        </div>
                    </div>
            </div>
        </div>
    </div>
@endsection
