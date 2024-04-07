<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Semester extends Model
{
    use HasFactory;

    
    protected $guarded = [];

    public function faculty(){
        return $this->belongsTo(Faculty::class, 'faculties_id');
    }

    public function course(){
        return $this->hasMany(Courses::class, 'semesters_id');
    }
}
