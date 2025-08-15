USE quiz_application;

-- Step 1: Disable safe update mode temporarily (optional, comment out if you prefer Option 3)
SET SQL_SAFE_UPDATES = 0;

-- Step 2: Clear existing data for quiz_id = 1 to avoid conflicts
-- Delete answers linked to questions with quiz_id = 1
DELETE a FROM answers a
INNER JOIN questions q ON a.question_id = q.id
WHERE q.quiz_id = 1;

-- Delete questions with quiz_id = 1
DELETE FROM questions WHERE quiz_id = 1;

-- Delete quiz with id = 1
DELETE FROM quizzes WHERE id = 1;

-- Step 3: Reset auto-increment counters for clean IDs (optional, only if you want IDs to start at 1)
ALTER TABLE quizzes AUTO_INCREMENT = 1;
ALTER TABLE questions AUTO_INCREMENT = 1;
ALTER TABLE answers AUTO_INCREMENT = 1;

-- Step 4: Insert the quiz
INSERT INTO quizzes (name, subject, num_questions, description) 
VALUES ('NFL Trivia Blitz', 'Football', 12, 'Test your knowledge of NFL history and rules!');

-- Step 5: Insert the questions (MySQL assigns IDs starting from 1)
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which NFL team has won the most Super Bowls?', 'New England Patriots', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Who holds the record for the most career passing yards in the NFL?', 'Tom Brady', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What city hosts the annual Super Bowl?', 'Varies', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which player is known as "Sweetness"?', 'Walter Payton', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What is the name of the trophy awarded to the Super Bowl winner?', 'Vince Lombardi Trophy', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which team won the first Super Bowl in 1967?', 'Green Bay Packers', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'How many points is a touchdown worth?', '6', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which quarterback has the most Super Bowl MVP awards?', 'Tom Brady', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What is the maximum number of players a team can have on the field at once?', '11', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which NFL team is known as "America''s Team"?', 'Dallas Cowboys', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What is the name of the play that starts a football game?', 'Kickoff', 'multiple_choice');
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which NFL coach has the most career wins?', 'Don Shula', 'multiple_choice');

-- Step 6: Insert the answers, assuming questions get IDs 1 through 12
INSERT INTO answers (question_id, answer_text) VALUES (1, 'Pittsburgh Steelers');
INSERT INTO answers (question_id, answer_text) VALUES (1, 'New England Patriots');
INSERT INTO answers (question_id, answer_text) VALUES (2, 'Peyton Manning');
INSERT INTO answers (question_id, answer_text) VALUES (2, 'Tom Brady');
INSERT INTO answers (question_id, answer_text) VALUES (3, 'Miami');
INSERT INTO answers (question_id, answer_text) VALUES (3, 'Varies');
INSERT INTO answers (question_id, answer_text) VALUES (4, 'Barry Sanders');
INSERT INTO answers (question_id, answer_text) VALUES (4, 'Walter Payton');
INSERT INTO answers (question_id, answer_text) VALUES (5, 'Lamar Hunt Trophy');
INSERT INTO answers (question_id, answer_text) VALUES (5, 'Vince Lombardi Trophy');
INSERT INTO answers (question_id, answer_text) VALUES (6, 'Kansas City Chiefs');
INSERT INTO answers (question_id, answer_text) VALUES (6, 'Green Bay Packers');
INSERT INTO answers (question_id, answer_text) VALUES (7, '7');
INSERT INTO answers (question_id, answer_text) VALUES (7, '6');
INSERT INTO answers (question_id, answer_text) VALUES (8, 'Joe Montana');
INSERT INTO answers (question_id, answer_text) VALUES (8, 'Tom Brady');
INSERT INTO answers (question_id, answer_text) VALUES (9, '12');
INSERT INTO answers (question_id, answer_text) VALUES (9, '11');
INSERT INTO answers (question_id, answer_text) VALUES (10, 'Philadelphia Eagles');
INSERT INTO answers (question_id, answer_text) VALUES (10, 'Dallas Cowboys');
INSERT INTO answers (question_id, answer_text) VALUES (11, 'Tipoff');
INSERT INTO answers (question_id, answer_text) VALUES (11, 'Kickoff');
INSERT INTO answers (question_id, answer_text) VALUES (12, 'Bill Belichick');
INSERT INTO answers (question_id, answer_text) VALUES (12, 'Don Shula');

-- Step 7: Re-enable safe update mode (optional, comment out if you didn’t disable it)
SET SQL_SAFE_UPDATES = 1;

