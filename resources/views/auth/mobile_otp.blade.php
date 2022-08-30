@extends('frontend.layouts.app')

@section('content')
<div class="py-6">
    <div class="container">
        <div class="row">
            <div class="col-xxl-5 col-xl-6 col-md-8 mx-auto">
                <div class="bg-white rounded shadow-sm p-4 text-left">
                    <h1 class="h3 fw-600 mb-3">{{ translate('Verify Your  Mobile Number') }}</h1>

                    <div class="card-body">
                        <form action="{{ route('mobile.verification') }}" method="POST" >
                            @csrf

                            <div class="form-group">
                                <input type="text" class="form-control" name="verification_code" value="" required autofocus placeholder="{{ translate('Enter Your OTP code') }}">
                            </div>
                           
                            <button type="submit" class="btn btn-primary btn-lg btn-block">
                                {{ translate('Verify') }}
                            </button>
                        </form>
                        <div class="mt-3">
                            {{translate('Already have an account')}} ? <a href="{{route('login')}}" class="btn-link mar-rgt text-bold">{{translate('Sign In')}}</a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
