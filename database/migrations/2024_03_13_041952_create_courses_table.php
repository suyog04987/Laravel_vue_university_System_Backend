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
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('credit_hrs');
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
        Schema::dropIfExists('cources');
    }
};
