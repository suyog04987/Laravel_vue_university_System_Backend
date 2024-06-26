<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
    use HasFactory;

    protected $fillable = [
        'note',
        'syllabus',
        'solution',
        'courses_id',
        'semesters_id',
        'universities_id',
        'faculties_id',
    ];

    public function course(){
        return $this->belongsTo(Courses::class);
    }
    public function university()
    {
        return $this->belongsTo(University::class);
    }
    
    protected $appends = ['noteUrl', 'syllabusUrl', 'solutionUrl'];

    public function getNoteUrlAttribute()
    {
        return asset('storage/files/' . $this->note);
    }

    public function getSyllabusUrlAttribute()
    {
        return asset('storage/files/' . $this->syllabus);
    }

    public function getSolutionUrlAttribute()
    {
        return asset('storage/files/' . $this->solution);
    }
}
