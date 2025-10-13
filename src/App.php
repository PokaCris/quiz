<?php

namespace Zver\Quiz;

class App {
        public function __construct() {}

        public function run() {
                $responce = [
                        'question' => 'Какое дерево становится мокрым после дождя?',
                        'answer' => [
                                'Береза',
                                'Елка',
                                'Любое',
                                'Дуб'
                        ]
                ];
                echo json_encode($responce);
        }      
}