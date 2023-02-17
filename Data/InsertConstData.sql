-- Inserting data for nation table.
INSERT INTO nations (nation_name)
VALUES ('Германия'),
       ('Франция'),
       ('Италия'),
       ('Испания'),
       ('Португалия'),
       ('Нидерланды'),
       ('Россия'),
       ('США'),
       ('Канада'),
       ('Япония'),
       ('Южная Корея'),
       ('Китай'),
       ('Индия'),
       ('Бразилия'),
       ('Аргентина'),
       ('Мексика'),
       ('Австралия'),
       ('Новая Зеландия'),
       ('Южная Африка'),
       ('Египет');
-- Inserting data for genders table.
INSERT INTO genders (gender_name)
VALUES ('Мужчина'),
       ('Женщина');
-- Insert 20 rows of data into the Humans table
INSERT INTO Countries (country_name)
VALUES ('Россия'),
       ('США'),
       ('Китай'),
       ('Канада'),
       ('Бразилия'),
       ('Австралия'),
       ('Индия'),
       ('Аргентина'),
       ('Франция'),
       ('Германия'),
       ('Испания'),
       ('Италия'),
       ('Япония'),
       ('Южная Корея'),
       ('Мексика'),
       ('Южно-Африканская Республика'),
       ('Турция'),
       ('Великобритания'),
       ('Индонезия'),
       ('Нигерия');
-- Insert 20 rows of data into the Countries table
INSERT INTO Conferences (conference_name, country_id)
VALUES ('Conference A', 5),
       ('Conference B', 8),
       ('Conference C', 2),
       ('Conference D', 19),
       ('Conference E', 13);
-- Insert values for participants
INSERT INTO Humans (first_name, second_name, sex, age, nationality, is_alive)
VALUES ('Иван', 'Иванов', 1, 32, 1, true),
       ('Елена', 'Сидорова', 2, 27, 2, true),
       ('Петр', 'Петров', 1, 45, 1, true),
       ('Ольга', 'Смирнова', 2, 18, 3, true),
       ('Алексей', 'Кузнецов', 1, 22, 1, true),
       ('Татьяна', 'Иванова', 2, 30, 2, true),
       ('Дмитрий', 'Попов', 1, 55, 4, true),
       ('Анна', 'Соколова', 2, 41, 6, true),
       ('Сергей', 'Федоров', 1, 37, 7, true),
       ('Марина', 'Морозова', 2, 28, 8, true),
       ('Игорь', 'Васильев', 1, 50, 10, true),
       ('Юлия', 'Полякова', 2, 23, 12, true),
       ('Артем', 'Григорьев', 1, 29, 13, true),
       ('Надежда', 'Козлова', 2, 34, 15, true),
       ('Владимир', 'Петухов', 1, 48, 17, true),
       ('Екатерина', 'Крылова', 2, 26, 18, true),
       ('Григорий', 'Титов', 1, 31, 19, true),
       ('София', 'Максимова', 2, 20, 20, true),
       ('Константин', 'Калинин', 1, 40, 2, true);
-- Insert default values for humans
INSERT INTO conference_participants (conference_id, participant_id)
VALUES (1, 5),
       (1, 7),
       (1, 9),
       (2, 11),
       (2, 12),
       (2, 13);

