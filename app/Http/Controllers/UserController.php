<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Models\User;

class UserController extends Controller
{
    public function create(){
        return view('users.create');
    }


    public function store(Request $request){
       //dd($request->request);
        $data= $request->validate([
            'name'=>['required', 'min:5'],
            'email'=>['required', 'email', Rule::unique('users', 'email')],
            'password'=>'required|confirmed|min:6'
        ]);

        $data['password']= bcrypt($data['password']);

        $user = User::create($data); //Creating user in DB

        auth()->login($user); //Login user

        return redirect('/')->with('message', 'Welcome to LARAJOBS!!');
    }


    public function logout(Request $request){
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('message', 'Sad to see you go!');
    }


    public function login(){
        return view('users.login');
    }


    public function authen(Request $request){
        //dd($request->request);
        $data= $request->validate([
            'email'=>['required', 'email'],
            'password'=> 'required'
        ]);

        if(auth()->attempt($data)){
            $request->session()->regenerate();

            return redirect('/')->with('message', 'Welcome Back!');
        }

        return back()->withErrors(['email' => 'Invalid Info!'])->onlyInput('email');
    }
}
