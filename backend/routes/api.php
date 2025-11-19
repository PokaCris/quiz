<?php

use App\Http\Controllers\QuizController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


Route::get(
    'quiz',
[
    QuizController::class, 'getQuestionByNumber'
]
);

Route::resource('user', UserController::class);
