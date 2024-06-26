<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Testimonials extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'position', 'content', 'image'];

    protected $appends = ['imageUrl'];

    public function getImageUrlAttribute() {
        return asset('storage/images/' . $this->image);
    }
}
