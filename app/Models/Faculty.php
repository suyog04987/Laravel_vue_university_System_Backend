<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use PhpParser\Node\Expr\FuncCall;

class Faculty extends Model
{
    use HasFactory;

    /**
     * The attributes that aren't mass assignable.
     *
     * 
     */
    protected $guarded = [];
    

    public function university()
    {
        return $this->belongsTo(University::class, 'universities_id');
    }

    public function semester()
    {
        return $this->hasMany(Semester::class, 'faculties_id', 'id');
    }
    public function course()
    {
        return $this->hasMany(Courses::class, 'faculties_id' ,'id');
        
    }
}
