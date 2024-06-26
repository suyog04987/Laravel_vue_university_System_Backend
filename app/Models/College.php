<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class College extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'location', 'website', 'image', 'est_date', 'affiliation'];

    protected $appends = ['collegeImage'];

    public function getCollegeImageAttribute()
    {
        return asset('storage/images/' . $this->image);
    }
}
