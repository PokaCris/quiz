<?php

use App\Http\Controllers\QuizController;
use Illuminate\Support\Facades\Route;


Route::get(
    'quiz',
[
    QuizController::class, 'getQuestionByNumber'
]
);
