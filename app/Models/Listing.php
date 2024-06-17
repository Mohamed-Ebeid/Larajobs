<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Model\User;

class Listing extends Model
{
  use HasFactory;

  protected $fillable = ['title', 'body', 'website', 'company', 'location',       'email', 'tags', 'logo', 'user_id'];

  public function scopeFilter($query, array $filters) {
    if($filters['tag'] ?? false) {
      $query->where('tags', 'like', '%' . request('tag') . '%');
      }
      
    if($filters['search'] ?? false) {
      $query->where('title', 'like', '%' . request('search') . '%')
        ->orWhere('body', 'like', '%' . request('search') . '%')
        ->orWhere('tags', 'like', '%' . request('search') . '%')
        ->orWhere('location', 'like', '%' . request('search') . '%');
      }
    }

    //Linking listings to a single user
    public function user(){
      return $this->belongsTo(User::class, 'user_id');
    }

}

