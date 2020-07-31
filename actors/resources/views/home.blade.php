<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    {{--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">--}}
    <link href="{{ asset('css/home.css') }}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Architects+Daughter&display=swap" rel="stylesheet">
    <title>Stars</title>

</head>
<body>
<div class="container-fluid top-space">
    <div class="row">
        <div class="col-lg-3 col-md-12 bg-white bottom-space">
            <div class="list-group" id="list-tab" role="tablist">
                @foreach($stars as $key => $star)
                    <a class="list-group-item list-group-item-action {{ $key === 0 ? "active": "" }}"
                       id="list-{{ $star->id }}-list"
                       data-toggle="list"
                       href="#list-{{ $star->id }}" role="tab"
                       aria-controls="home">{{ $star->first_name }} {{ $star->last_name }}</a>
                @endforeach
            </div>
        </div>
        <div class="col-lg-9 col-md-12">
            <div class="tab-content" id="nav-tabContent">
                @foreach($stars as $key => $star)
                    <div class="tab-pane fade {{ $key === 0 ? "active show": "" }}" id="list-{{ $star->id }}"
                         role="tabpanel" aria-labelledby="list-{{ $star->id }}-list">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-6 col-md-12">
                                    <div class="username"> {{ $star->first_name }} {{ $star->last_name }} </div>
                                    <div class="description"> {{ $star->description }} </div>
                                </div>
                                <div class="col-lg-6 col-md-12 image">
                                    <img src="{{ url("storage/".$star->photo) }}" class="card-img-top" alt="...">
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
