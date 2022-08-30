@extends('frontend.layouts.app')

@section('content')
<div class="py-6">
    <div class="container">
        <div class="row">
            <div class="col-xxl-5 col-xl-6 col-md-8 mx-auto">
                <div class="bg-white rounded shadow-sm p-4 text-left">
                    <h1 class="h3 fw-600">{{ translate('Reset Password') }}</h1>
                    <p class="mb-4 opacity-60">{{translate('Enter the OTP code and new password and confirm password.')}} </p>
                    <form method="POST" action="{{ route('password.update.otp') }}">
                        @csrf

                        <div class="form-group">
                            <input id="otp_code" type="text" class="form-control" name="otp_code" value="{{ old('otp_code')}}" placeholder="Code" required autofocus>
                        </div>

                        <div class="form-group">
                            <input id="password" type="password" class="form-control" name="password" placeholder="{{ translate('New Password') }}" required minlength="4">

                        </div>

                        <div class="form-group">
                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="{{ translate('Confirm Password') }}" required>
                        </div>

                        <div class="form-group text-right">
                            <button type="submit" class="btn btn-primary btn-block">
                                {{ translate('Reset Password') }}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
