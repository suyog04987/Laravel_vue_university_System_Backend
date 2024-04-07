<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Courses extends Model
{
    use HasFactory;

    protected $guarded = [];
    public function semester(){
        return $this->belongsTo(Semester::class, 'faculties_id');
    }

    public function material(){
        return $this->hasMany(Material::class);
    }

    public function university()
    {
        return $this->belongsTo(University::class);
    }
}
