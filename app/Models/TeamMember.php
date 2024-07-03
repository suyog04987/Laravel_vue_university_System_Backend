<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeamMember extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'position',
        'photo',
        'facebook',
        'twitter',
        'linkedin',
        'description'
    ];

    protected $appends = ['photo_url'];

    public function getPhotoUrlAttribute()
    {
        return asset('storage/images/' . $this->photo);
    }
}
