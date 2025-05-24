<?php

namespace Database\Factories;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $title = fake()->sentence().rand(1,20);
        $body = fake()->paragraph();
        return [
            'title_en'=>$title.'_en',
            'title_bn'=>$title.'_bn',
            'slug'=>Str::slug($title),
            'body_en'=>$body.'_en',
            'body_bn'=>$body.'_bn',
            'photo'=>fake()->imageUrl(1040,680),
            'category_id'=>Category::all()->random()->id,
        ];
    }
}
