<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Factories\BelongsToManyRelationship;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use HasFactory;
    use Sluggable;
    use SoftDeletes;
    public static function validate($request)
    {
        $request->validate([
            "book_code" => "required",
        ]);
    }

    protected $fillable = [
        'book_code',
        'title',
        'cover',
        'slug',
        'jumlah',
        'good',
        'damaged'
    ];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function getId()
    {
        return $this->attributes['id'];
    }

    public function setId($id)
    {
        $this->attributes['id'] = $id;
    }
    public function getBook_code()
    {
        return $this->attributes['book_code'];
    }

    public function setBook_code($book_code)
    {
        $this->attributes['book_code'] = $book_code;
    }

    public function getTitle()
    {
        return $this->attributes['title'];
    }

    public function setTitle($title)
    {
        $this->attributes['title'] = $title;
    }
    public function getCover()
    {
        return $this->attributes['cover'];
    }

    public function setCover($cover)
    {
        $this->attributes['cover'] = $cover;
    }
    public function getSlug()
    {
        return $this->attributes['slug'];
    }

    public function setSlug($slug)
    {
        $this->attributes['slug'] = $slug;
    }
    public function getJumlah()
    {
        return $this->attributes['jumlah'];
    }

    public function setJumlah($jumlah)
    {
        $this->attributes['jumlah'] = $jumlah;
    }
    public function getGood()
    {
        return $this->attributes['good'];
    }

    public function setGood($good)
    {
        $this->attributes['good'] = $good;
    }
    public function getDamaged()
    {
        return $this->attributes['damaged'];
    }

    public function setDamaged($damaged)
    {
        $this->attributes['damaged'] = $damaged;
    }



    /**
     * The categories that belong to the Book
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function categories(): BelongsToMany
    {
        return $this->belongsToMany(Category::class, 'book_category', 'book_id', 'category_id');
    }
}