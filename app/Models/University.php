<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class University extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'details', 'address', 'image_url'];
        
    

    public function faculty(){
        return $this->hasMany(Faculty::class, 'universities_id', 'id');
    }
    
    public function semester(){
        return $this->hasMany(Semester::class, 'universities_id', 'id');
    }

    public function courses(){
        return $this->hasMany(Courses::class, 'universities_id', 'id');
    }
    ///rhsihfshdfsdhfoi
}
