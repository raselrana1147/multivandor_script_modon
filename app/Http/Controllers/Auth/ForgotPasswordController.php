<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Support\Facades\Password;
use Illuminate\Auth\Events\PasswordReset;
use App\User;
use App\Mail\SecondEmailVerifyMailManager;
use Mail;
use App\OTPMeta;
use App\Helper\MobileApi;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Send a reset link to the given user.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    public function sendResetLinkEmail(Request $request)
    {

         
         if (!empty($request->phone)) {
            $user=User::where('phone',$request->phone)->first();
           if (!is_null($user)) {

                $OTP=rand(100000,999999);
                $user->verification_code = $OTP;

                $user->save();
                $data=OTPMeta::orderBy('id','DESC')->first();


                if ($data->available_message>0) {
                    
                    $message="Dear user, you have been sent an OTP in phone number. Please use ".$OTP." this OTP code to reset your password";

                    $to=$request->phone;

                    MobileApi::mobile_api($message,$to);

                    $remain_message=$data->available_message -1;
                    $data->available_message=$remain_message;
                    $data->save();

                    flash(translate('OTP successfuly sent in your mobile'))->success();
                     return redirect(route('reset.password.otp'));
                }else{

                    flash(translate('Something went wrong. Please contact with admin.'))->error();
                     return back();
                }

           }else{
             flash(translate('No account exists with this phone number'))->error();
             return back();
            }
            return back();
         }else{
            flash(translate('Please enter your phone number'))->error();
            return back();
        }
        // if (filter_var($request->email, FILTER_VALIDATE_EMAIL)) {
        //     $user = User::where('email', $request->email)->first();
        //     if ($user != null) {
        //         $user->verification_code = rand(100000,999999);
        //         $user->save();

        //         $array['view'] = 'emails.verification';
        //         $array['from'] = env('MAIL_USERNAME');
        //         $array['subject'] = translate('Password Reset');
        //         $array['content'] = 'Verification Code is '.$user->verification_code;

        //         Mail::to($user->email)->queue(new SecondEmailVerifyMailManager($array));

        //         return view('auth.passwords.reset');
        //     }
        //     else {
        //         flash(translate('No account exists with this email'))->error();
        //         return back();
        //     }
        // }
        // else{
        //     $user = User::where('phone', $request->email)->first();
        //     if ($user != null) {
        //         $user->verification_code = rand(100000,999999);
        //         $user->save();
        //         sendSMS($user->phone, env('APP_NAME'), $user->verification_code.' is your verification code');
        //         return view('otp_systems.frontend.auth.passwords.reset_with_phone');
        //     }
        //     else {
        //         flash(translate('No account exists with this phone number'))->error();
        //         return back();
        //     }
        // }
    }
}
