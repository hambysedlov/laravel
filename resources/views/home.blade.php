@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Подписки</div>

                <div class="panel-body">
                    @foreach($cats as $one)
                    <div><input type='checkbox' name='check' class="check"/>{{$one->name}}
                        
                    </div>
                        @endforeach
                        
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
