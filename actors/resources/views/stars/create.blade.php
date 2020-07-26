@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title text-center font-weight-bold">Create new article</h5>
                    </div>

                    <div class="card-body">
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
                            <div class="form-group">
                                <label for="first_name">First Name of actor</label>
                                <input type="text" name="first_name" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="last_name">Last Name of actor</label>
                                <input type="text" name="last_name" class="form-control" id="last_name">
                            </div>
                            <div class="form-group">
                                <label for="description">Description of article</label>
                                <textarea name="description" name="description" class="form-control" rows="4"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="photo">Upload image</label>
                                <input type="file" name="photo" class="form-control" id="photo">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary w-50">Save your new article</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
