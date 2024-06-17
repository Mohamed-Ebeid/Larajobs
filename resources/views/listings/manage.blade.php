{{-- @php

dd($listings);

@endphp --}}

@extends('layout')

@section('content')
@include('partials._search')

<table class="w-full table-auto rounded-sm">
  <tbody>
  	@unless($listings->isEmpty())
  	@foreach($listings as $list)
    <tr class="border-gray-300">
        <td
            class="px-4 py-8 border-t border-b border-gray-300 text-lg"
        >
            <a href="/listings/{{$list->id}}">{{$list->title}}</a>
        </td>
        <td
            class="px-4 py-8 border-t border-b border-gray-300 text-lg"
        >
            <a
                href="edit.html"
                class="text-blue-400 px-6 py-2 rounded-xl"
                ><i
                    class="fa-solid fa-pen-to-square"
                ></i>
                Edit</a
            >
        </td>
        <td
            class="px-4 py-8 border-t border-b border-gray-300 text-lg"
        >
            <form action="">
                <button class="text-red-600">
                    <i
                        class="fa-solid fa-trash-can"
                    ></i>
                    Delete
                </button>
            </form>
        </td>
    </tr>
    @endforeach
    @else
    	<tr class="border-gray-300">
        <td
            class="px-4 py-8 border-t border-b border-gray-300 text-lg"
        >
            <p class="text-center">You don't have listings!</p>
        </td>
       </tr>
    @endunless
  </tbody>
</table>

@endsection