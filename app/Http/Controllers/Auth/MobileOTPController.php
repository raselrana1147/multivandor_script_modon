<?php
namespace App\Http\Controllers\Auth;
use App\User;
use App\Customer;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;


class MobileOTPController extends Controller
{
   
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function show_form(){
        return view('auth.mobile_otp');
    }

    public function verify(Request $request){

       $user = User::where('verification_code', $request->verification_code)->first();
        if($user != null){
            $user->email_verified_at = Carbon::now();
            $user->verification_code=null;
            $user->save();
            auth()->login($user, true);
            flash(translate('Your phone has been verified successfully'))->success();
        }
        else {
            flash(translate('Sorry, we could not verifiy you. Please try again'))->error();
        }

        return redirect()->route('dashboard');     

    }

    public function reset_form(){
        return view('auth.reset_pass');
    }

    public function update_pass_otp(Request $request){
                                                          
        $user=User::where('verification_code',$request->otp_code)->first();
        if (!is_null($user)) {
            if ($request->password !==$request->password_confirmation) {
                flash(translate('Confirm password not match'))->error();
                 return back();
            }else{
                $user->password=Hash::make($request->password);
                $user->verification_code=null;
                $user->save();
                if ($user->user_type ==="admin" || $user->user_type ==="staff") {
                    flash(translate('Your password reset successfully'))->success();
                    return redirect(route('login'));
                }else{
                    flash(translate('Your password reset successfully'))->success();
                    return redirect(route('user.login'));
                } 
            }
            
        }else{
            flash(translate('Invalid OTP. Use valid OTP code'))->error();
            return back();
        }
    }

    
    
}
