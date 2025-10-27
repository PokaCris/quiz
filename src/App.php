<?php

namespace Cris\Quiz;

use PDO;

class App {
        public function __construct() {}

        public function run() {
                header('Content-type: application/json');
                $conn = newPDO(
                        'mysql:host=db;db_name=app_db', 
                        'app_user', 
                        'app_password',
                        [
                                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOS,
                                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXPECTION
                        ]
                );
                $response = $conn->query(
                <<<SQL
                SELECT * FROM questions
                LEFT JOIN answers
                WHERE answers.question_id = question_id
SQL
                );
                echo json_encode($responce);
        }      
}