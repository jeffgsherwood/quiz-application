USE quiz_application;

-- Step 1: Disable safe update mode temporarily
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

-- Step 3: Reset auto-increment counters for clean IDs
ALTER TABLE quizzes AUTO_INCREMENT = 1;
ALTER TABLE questions AUTO_INCREMENT = 1;
ALTER TABLE answers AUTO_INCREMENT = 1;

-- Step 4: Insert the quiz
INSERT INTO quizzes (name, subject, num_questions, description) 
VALUES ('NFL Trivia Blitz', 'Football', 12, 'Test your knowledge of NFL history and rules!');

-- Step 5: Insert the questions
-- Question 1
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which NFL team has won the most Super Bowls?', 'New England Patriots', 'multiple_choice');

-- Question 2
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Who holds the record for the most career passing yards in the NFL?', 'Tom Brady', 'multiple_choice');

-- Question 3
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What is the name of the trophy awarded to the Super Bowl winner?', 'Vince Lombardi Trophy', 'multiple_choice');

-- Question 4
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Which player holds the record for the most career rushing yards?', 'Emmitt Smith', 'multiple_choice');

-- Question 5
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What is the name of the two conferences in the NFL?', 'AFC and NFC', 'multiple_choice');

-- Question 6
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Who was the first team to win a Super Bowl?', 'Green Bay Packers', 'multiple_choice');

-- Question 7
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'How many points is a touchdown worth?', '6', 'multiple_choice');

-- Question 8
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Who is the current head coach of the New England Patriots?', 'Jerod Mayo', 'multiple_choice');

-- Question 9
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'How many players are on the field for each team during a regular play?', '11', 'multiple_choice');

-- Question 10
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What is a "red zone" in football?', 'The area between the 20-yard line and the goal line', 'multiple_choice');

-- Question 11
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'What is the term for the player who hikes the ball to the quarterback?', 'Center', 'multiple_choice');

-- Question 12
INSERT INTO questions (quiz_id, question_text, correct_answer, type) 
VALUES (1, 'Who is the quarterback for the Kansas City Chiefs?', 'Patrick Mahomes', 'multiple_choice');

-- Step 6: Insert the answers for each question (including incorrect options)
-- Answers for Question 1
INSERT INTO answers (question_id, answer_text) VALUES (1, 'New England Patriots');
INSERT INTO answers (question_id, answer_text) VALUES (1, 'Pittsburgh Steelers');
INSERT INTO answers (question_id, answer_text) VALUES (1, 'Dallas Cowboys');
INSERT INTO answers (question_id, answer_text) VALUES (1, 'San Francisco 49ers');

-- Answers for Question 2
INSERT INTO answers (question_id, answer_text) VALUES (2, 'Drew Brees');
INSERT INTO answers (question_id, answer_text) VALUES (2, 'Peyton Manning');
INSERT INTO answers (question_id, answer_text) VALUES (2, 'Tom Brady');
INSERT INTO answers (question_id, answer_text) VALUES (2, 'Brett Favre');

-- Answers for Question 3
INSERT INTO answers (question_id, answer_text) VALUES (3, 'Vince Lombardi Trophy');
INSERT INTO answers (question_id, answer_text) VALUES (3, 'Lamar Hunt Trophy');
INSERT INTO answers (question_id, answer_text) VALUES (3, 'George Halas Trophy');
INSERT INTO answers (question_id, answer_text) VALUES (3, 'The Super Bowl Trophy');

-- Answers for Question 4
INSERT INTO answers (question_id, answer_text) VALUES (4, 'Walter Payton');
INSERT INTO answers (question_id, answer_text) VALUES (4, 'Emmitt Smith');
INSERT INTO answers (question_id, answer_text) VALUES (4, 'Barry Sanders');
INSERT INTO answers (question_id, answer_text) VALUES (4, 'Adrian Peterson');

-- Answers for Question 5
INSERT INTO answers (question_id, answer_text) VALUES (5, 'AFC and NFC');
INSERT INTO answers (question_id, answer_text) VALUES (5, 'East and West');
INSERT INTO answers (question_id, answer_text) VALUES (5, 'Pro and College');
INSERT INTO answers (question_id, answer_text) VALUES (5, 'North and South');

-- Answers for Question 6
INSERT INTO answers (question_id, answer_text) VALUES (6, 'Green Bay Packers');
INSERT INTO answers (question_id, answer_text) VALUES (6, 'New York Jets');
INSERT INTO answers (question_id, answer_text) VALUES (6, 'Kansas City Chiefs');
INSERT INTO answers (question_id, answer_text) VALUES (6, 'New England Patriots');

-- Answers for Question 7
INSERT INTO answers (question_id, answer_text) VALUES (7, '3');
INSERT INTO answers (question_id, answer_text) VALUES (7, '6');
INSERT INTO answers (question_id, answer_text) VALUES (7, '7');
INSERT INTO answers (question_id, answer_text) VALUES (7, '2');

-- Answers for Question 8
INSERT INTO answers (question_id, answer_text) VALUES (8, 'Bill Belichick');
INSERT INTO answers (question_id, answer_text) VALUES (8, 'Jerod Mayo');
INSERT INTO answers (question_id, answer_text) VALUES (8, 'Mike Tomlin');
INSERT INTO answers (question_id, answer_text) VALUES (8, 'Sean McVay');

-- Answers for Question 9
INSERT INTO answers (question_id, answer_text) VALUES (9, '10');
INSERT INTO answers (question_id, answer_text) VALUES (9, '11');
INSERT INTO answers (question_id, answer_text) VALUES (9, '12');
INSERT INTO answers (question_id, answer_text) VALUES (9, '9');

-- Answers for Question 10
INSERT INTO answers (question_id, answer_text) VALUES (10, 'The area between the 20-yard line and the goal line');
INSERT INTO answers (question_id, answer_text) VALUES (10, 'The area where penalties are called');
INSERT INTO answers (question_id, answer_text) VALUES (10, 'The last 2 minutes of the game');
INSERT INTO answers (question_id, answer_text) VALUES (10, 'A team\'s timeout zone');

-- Answers for Question 11
INSERT INTO answers (question_id, answer_text) VALUES (11, 'Running Back');
INSERT INTO answers (question_id, answer_text) VALUES (11, 'Center');
INSERT INTO answers (question_id, answer_text) VALUES (11, 'Tight End');
INSERT INTO answers (question_id, answer_text) VALUES (11, 'Linebacker');

-- Answers for Question 12
INSERT INTO answers (question_id, answer_text) VALUES (12, 'Russell Wilson');
INSERT INTO answers (question_id, answer_text) VALUES (12, 'Joe Burrow');
INSERT INTO answers (question_id, answer_text) VALUES (12, 'Lamar Jackson');
INSERT INTO answers (question_id, answer_text) VALUES (12, 'Patrick Mahomes');