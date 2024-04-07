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
        Schema::create('materials', function (Blueprint $table) {
            $table->id();
            $table->string('note');
            $table->string('syllabus');
            $table->string('solution');
            $table->unsignedBigInteger('courses_id');
            $table->foreign('courses_id')->references('id')->on('courses');
            $table->unsignedBigInteger('semesters_id');
            $table->foreign('semesters_id')->references('id')->on('semesters');
            $table->unsignedBigInteger('universities_id');
            $table->foreign('universities_id')->references('id')->on('universities');
            $table->unsignedBigInteger('faculties_id');
            $table->foreign('faculties_id')->references('id')->on('faculties');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('materials');
    }
};
