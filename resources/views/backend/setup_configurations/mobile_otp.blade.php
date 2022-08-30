@extends('backend.layouts.app')

@section('content')

    <div class="row">
        <div class="col-lg-8 mx-auto">
            <div class="card">
                <div class="card-header">
                    <h1 class="mb-0 h6">{{translate('Mobile OTP Information')}}</h1>
                </div>
                <div class="card-body">
                   <p><span class="m-4"><strong>Sender Name</strong></span><span>{{$data->sender}}</span></p>
                    <p><span class="m-4"><strong>Country Code</strong></span><span>({{$data->country_code}}) {{$data->country_name}}</span></p>
                     <p><span class="m-4"><strong>Remain Message</strong></span><span>{{$data->available_message}} Only</span></p>
                </div>
            </div>
        </div>
    </div>

@endsection
