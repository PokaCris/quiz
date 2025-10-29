SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE app_db;
SET NAMES utf8mb4;

CREATE TABLE questions (
    id int NOT NULL AUTO_INCREMENT,
    question text NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE answers (
    id int NOT NULL AUTO_INCREMENT,
    question_id int NOT NULL,
    answer_text text NOT NULL,
    is_correct tinyint(1) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO questions (id, question) VALUES
(1, 'Какое дерево становится мокрым после дождя?'),
(2, 'Сколько лап у кошки?'),
(3, 'Какой цвет получается при смешивании красного и жёлтого?'),
(4, 'Какая планета ближе всего к Солнцу?'),
(5, 'Сколько секунд в минуте?'),
(6, 'Какой язык программирования используется для веб-разработки?'),
(7, 'Что такое HTML?'),
(8, 'Какая система управления базами данных используется в этом проекте?'),
(9, 'Для чего используется Docker?'),
(10, 'Что такое API?');

INSERT INTO answers (question_id, answer_text, is_correct) VALUES
(1, 'Дуб', 0),
(1, 'Берёза', 0),
(1, 'Все деревья', 1),
(1, 'Сосна', 0),
(2, 'Две', 0),
(2, 'Четыре', 1),
(2, 'Шесть', 0),
(2, 'Восемь', 0),
(3, 'Зелёный', 0),
(3, 'Фиолетовый', 0),
(3, 'Оранжевый', 1),
(3, 'Синий', 0),
(4, 'Марс', 0),
(4, 'Венера', 0),
(4, 'Меркурий', 1),
(4, 'Юпитер', 0),
(5, '30 секунд', 0),
(5, '60 секунд', 1),
(5, '90 секунд', 0),
(5, '120 секунд', 0),
(6, 'JavaScript', 1),
(6, 'Python', 0),
(6, 'Java', 0),
(6, 'C++', 0),
(7, 'Язык гипертекстовой разметки', 1),
(7, 'Язык программирования', 0),
(7, 'Система управления базами данных', 0),
(7, 'Фреймворк', 0),
(8, 'MySQL', 1),
(8, 'MongoDB', 0),
(8, 'PostgreSQL', 0),
(8, 'SQLite', 0),
(9, 'Для контейнеризации приложений', 1),
(9, 'Для виртуализации', 0),
(9, 'Для управления базами данных', 0),
(9, 'Для фронтенд разработки', 0),
(10, 'Интерфейс программирования приложений', 1),
(10, 'Язык программирования', 0),
(10, 'База данных', 0),
(10, 'Операционная система', 0);

SET foreign_key_checks = 1;