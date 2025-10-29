<?php

namespace Cris\Quiz;

use PDO;
use Cris\Quiz\models\Question;

class App {
        public function __construct() {}

        public function run() {
                header('Content-type: application/json');
                $conn = new PDO(
                        'mysql:host=db;dbname=app_db', 
                        'app_user', 
                        'app_password',
                        [
                                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
                        ]
                );
                $response = $conn->query(
                <<<SQL
                SELECT questions.id, questions.question
                FROM questions 
                LEFT JOIN answers
                ON answers.question_id = questions.id
SQL
                );
                // echo json_encode($response->fetchAll());

                $questions = [];
                $questions = $response->fetchAll(
                        PDO::FETCH_CLASS,
                        Question::class
                ); 
                echo json_encode($questions);
        }      
}