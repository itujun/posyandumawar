<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Balita extends Model
{
    use HasFactory;

    protected $primaryKey = 'id_balita';
    protected $guarded = ['id_balita', 'updated_at', 'created_at'];

    public function ukurBalitas()
    {
        return $this->hasMany(UkurBalita::class, 'id_balita');
    }

    public function getRouteKeyName()
    {
        return 'nama';
    }
}
