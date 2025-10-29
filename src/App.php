<?php

namespace Cris\Quiz;

use PDO;

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
                SELECT * FROM questions
                LEFT JOIN answers
                ON answers.question_id = question_id
SQL
                );
                echo json_encode($response);
        }      
}