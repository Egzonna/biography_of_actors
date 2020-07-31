@extends('layouts.app')

@section('content')
    <link href="{{ asset('css/stars.css') }}" rel="stylesheet">
    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2>STARS</h2>
            <div class="row">
                @foreach($stars as $star)
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <a class="text-black-50" href="{{ route('show', ['id' => $star->id]) }}">
                            <div class="card card-image stars_desc">
                                <img src="{{ url("storage/".$star->photo) }}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"> {{ $star->first_name }} {{ $star->last_name }}</h5>
                                    <p class="card-text"> {{ Str::limit($star->description, 150) }}</p>
                                    <div class="text-center">
                                        <a href="{{ route('update', ['id' => $star->id]) }}"
                                           class="btn w-50 edit">Edit</a>
                                        <a href="{{ route('destroy', ['id' => $star->id]) }}"
                                           class="btn delete">Delete</a>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
