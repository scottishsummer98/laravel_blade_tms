<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;

    protected $fillable = [
        'title', 'description', 'assigned_by', 'assigned_by_country',  'assigned_to', 'assigned_to_country', 'assign_date', 'status',
    ];
}
