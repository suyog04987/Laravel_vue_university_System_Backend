<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('semesters', function (Blueprint $table) {
            $table->id();
            $table->string('semester');
            $table->unsignedBigInteger('faculties_id');
            $table->foreign('faculties_id')->references('id')->on('faculties');
            $table->unsignedBigInteger('universities_id');
            $table->foreign('universities_id')->references('id')->on('universities');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('semesters');
    }
};
