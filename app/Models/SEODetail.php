<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SEODetail extends Model
{
    use HasFactory;

    protected $fillable = ['subject_type','subject_id', 'seo_title', 'seo_description','seo_keyword','is_index','is_follow','canonical', 'created_at','updated_at'];

    protected $table="seo_detail";
}
