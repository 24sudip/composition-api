<?php

namespace Database\Seeders;

use App\Models\{User, Post, Tag};
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        $this->call([
            // CategorySeeder::class,
            // TagSeeder::class,
            // PostSeeder::class,
            AdminSeeder::class
        ]);
        // foreach (Post::all() as $post) {
        //     $tags = Tag::take(rand(1,4))->pluck('id');
        //     $post->tags()->sync($tags);
        // }
    }
}
