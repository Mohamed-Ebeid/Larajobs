<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Listing;

class ListingController extends Controller
{
  //Show all listing
  public function index(){
      return view('listings.index', ['listings'=>Listing::latest()->
          filter(request(['tag', 'search']))->paginate(6)]);
  }

  //show single listing
  public function show(Listing $Listing){
    //dd($Listing);
    return view('listings.show', ['listing' => $Listing]);
  }

  //create page
  public function create(){
    return view('listings.create');
  }

  //storing listings
  public function store(Request $request){

    //dd($request->logo);
    $data = $request->validate([
      'title'=>'required',
      'company'=>'required',
      'location'=>'required',
      //'logo' => 'required|image|mimes:png,jpg,jpeg|max:2048',
      'website'=>'required',
      'email'=>['required', 'email'],
      'tags'=>'required',
      'body'=>'required',
    ]);

    if($request->hasFile('logo')){
      $data['logo']= $request->file('logo')->store('logos', 'public');
    }

    $data['user_id']= auth()->id();
    //dd($data);

    Listing::create($data);


    return redirect('/')->with('message', 'Listing Created Successfully!');
  }

  public function edit(Listing $listing){
    //Only the owner and the admin
    if($listing->user_id != auth()->id() && auth()->id() != 2){ 
            abort(403, 'You are not the owner of this post');
    }

    return view('listings.edit', ['listing'=>$listing]);
  }

  public function update(Request $request, Listing $listing){

    //Only the owner and the admin
    if($listing->user_id != auth()->id() && auth()->id() != 2){ 
        abort(403, 'You are not the owner of this post');
    }



   // dd($request->hasFile('logo'));
    $data = $request->validate([
      'title'=>'required',
      'company'=>'required',
      'location'=>'required',
      'website'=>'required',
      'email'=>['required', 'email'],
      'tags'=>'required',
      'body'=>'required',
    ]);

    if($request->hasFile('logo')){
      $data['logo']= $request->file('logo')->store('logos', 'public');
    }

    $listing->update($data);

    return redirect('/')->with('message', 'Listing Updated Successfully!');
  }

  public function destroy(Listing $listing){
    
    //Only the owner and the admin
    if($listing->user_id != auth()->id() && auth()->id() != 2){ 
        abort(403, 'You are not the owner of this post');
    }



    $listing->delete();
    return redirect('/')->with('message', 'Listng Deleted Successfully!');
  }

  public function manage(){
    return view('listings.manage', ['listings'=> auth()->user()->listings()
      ->get()]);
  }

}
