@extends('layout')

@section('content')
@include('partials._hero')
@include('partials._search')

 <div class="lg:grid lg:grid-cols-3 gap-4 space-y-4 md:space-y-0 mx-4">

@unless(count($listings)==0)


@foreach($listings as $listing)
  <x-listing-card :listing="$listing"/>
@endforeach

@else
  <h2>No listings</h2>
@endunless

</div>

<div class="mt-1 p-2 ">
  {{$listings->links()}}
</div>

@endsection