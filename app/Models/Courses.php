<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Courses extends Model
{
    use HasFactory;

    protected $guarded = [];
    public function semester(){
        return $this->belongsTo(Semester::class, 'semesters_id', 'id');
    }

    public function material(){
        return $this->hasMany(Material::class, 'courses_id', 'id');
    }

    public function university()
    {
        return $this->belongsTo(University::class);
    }

    //get faculty name
    public function faculty(){
        return $this->belongsTo(Faculty::class, 'faculties_id', 'id');
    }
}
