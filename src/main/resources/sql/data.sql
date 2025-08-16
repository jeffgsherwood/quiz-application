USE quiz_application;

-- Step 1: Disable safe update mode temporarily
SET SQL_SAFE_UPDATES = 0;

-- Step 2: Insert the quizzes
-- Quiz 1: NFL Trivia Blitz
INSERT INTO quizzes (name, subject, description)
VALUES ('NFL Trivia Blitz', 'Football', 'Test your knowledge of NFL history and rules!');
SET @quizIdNFL = LAST_INSERT_ID();

-- Quiz 2: NCAA Football
INSERT INTO quizzes (name, subject, description)
VALUES ('NCAA Football Trivia', 'Football', 'A blitz of college football questions!');
SET @quizIdNCAAFB = LAST_INSERT_ID();

-- Quiz 3: NCAA Basketball
INSERT INTO quizzes (name, subject, description)
VALUES ('NCAA Basketball Trivia', 'Basketball', 'A quiz on college basketball history and rules.');
SET @quizIdNCAAB = LAST_INSERT_ID();

-- Quiz 4: NBA
INSERT INTO quizzes (name, subject, description)
VALUES ('NBA Trivia', 'Basketball', 'Test your knowledge of professional basketball!');
SET @quizIdNBA = LAST_INSERT_ID();

-- Quiz 5: NCAA Baseball
INSERT INTO quizzes (name, subject, description)
VALUES ('NCAA Baseball Trivia', 'Baseball', 'A quiz on college baseball.');
SET @quizIdNCAABA = LAST_INSERT_ID();

-- Quiz 6: MLB
INSERT INTO quizzes (name, subject, description)
VALUES ('MLB Trivia', 'Baseball', 'Test your knowledge of professional baseball!');
SET @quizIdMLB = LAST_INSERT_ID();

-- Quiz 7: Another NFL Trivia Quiz
INSERT INTO quizzes (name, subject, description)
VALUES ('NFL History', 'Football', 'Another quiz on NFL history and famous players!');
SET @quizIdNFL2 = LAST_INSERT_ID();


-- Step 3: Insert the questions
-- NFL Trivia Blitz Questions (@quizIdNFL)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Which NFL team has won the most Super Bowls?', 'multiple_choice');
SET @q1 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Who holds the record for the most career passing yards in the NFL?', 'multiple_choice');
SET @q2 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'What is the name of the trophy awarded to the Super Bowl winner?', 'multiple_choice');
SET @q3 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Which player holds the record for the most career rushing yards?', 'multiple_choice');
SET @q4 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'What is the name of the two conferences in the NFL?', 'multiple_choice');
SET @q5 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Who was the first team to win a Super Bowl?', 'multiple_choice');
SET @q6 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'How many points is a touchdown worth?', 'multiple_choice');
SET @q7 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Who is the current head coach of the New England Patriots?', 'multiple_choice');
SET @q8 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'How many players are on the field for each team during a regular play?', 'multiple_choice');
SET @q9 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'What is a "red zone" in football?', 'multiple_choice');
SET @q10 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'What is the term for the player who hikes the ball to the quarterback?', 'multiple_choice');
SET @q11 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Who is the quarterback for the Kansas City Chiefs?', 'multiple_choice');
SET @q12 = LAST_INSERT_ID();
-- New NFL Trivia Blitz Questions (8 added)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Which two teams played in the first regular-season NFL game?', 'multiple_answer');
SET @q13 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'What are the two major conferences of the NFL?', 'multiple_answer');
SET @q14 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Which famous NFL quarterbacks have played for the Denver Broncos?', 'multiple_answer');
SET @q15 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'In American football, how many yards are needed to get a "first down"?', 'multiple_choice');
SET @q16 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'A field goal is worth how many points?', 'multiple_choice');
SET @q17 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Which of the following cities have hosted multiple Super Bowls?', 'multiple_answer');
SET @q18 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Which of the following are types of NFL penalties?', 'multiple_answer');
SET @q19 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL, 'Which NFL team has an eagle as its mascot?', 'multiple_choice');
SET @q20 = LAST_INSERT_ID();


-- NCAA Football Questions (@quizIdNCAAFB)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which team is known for the "Rocky Top" song?', 'multiple_choice');
SET @q21 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of the following are SEC rivals for the Tennessee Volunteers?', 'multiple_answer');
SET @q22 = LAST_INSERT_ID();
-- New NCAA Football Questions (18 added)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which school has the most Heisman Trophy winners?', 'multiple_choice');
SET @q23 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'The "Iron Bowl" is the annual rivalry game between which two teams?', 'multiple_choice');
SET @q24 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of the following are part of the Power Five conferences?', 'multiple_answer');
SET @q25 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'What is the name of the trophy awarded to the winner of the SEC Championship Game?', 'multiple_choice');
SET @q26 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which college football team has the most national championships?', 'multiple_choice');
SET @q27 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of the following teams are in the Big 10 conference?', 'multiple_answer');
SET @q28 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which college football stadium is known as "The Swamp"?', 'multiple_choice');
SET @q29 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of the following college football teams are nicknamed the "Tigers"?', 'multiple_answer');
SET @q30 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Who won the first Heisman Trophy?', 'multiple_choice');
SET @q31 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'What is the largest college football stadium in the United States?', 'multiple_choice');
SET @q32 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of the following teams have won a national championship since 2010?', 'multiple_answer');
SET @q33 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'The rivalry game between Army and Navy is traditionally played in which month?', 'multiple_choice');
SET @q34 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of these bowl games are part of the College Football Playoff rotation?', 'multiple_answer');
SET @q35 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which coach has the most career wins in NCAA Division I football?', 'multiple_choice');
SET @q36 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of these is a nickname for the Ohio State Buckeyes stadium?', 'multiple_choice');
SET @q37 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'What is the oldest college football rivalry in the South?', 'multiple_choice');
SET @q38 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'Which of the following teams are in the ACC?', 'multiple_answer');
SET @q39 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAFB, 'The "Rose Bowl" is traditionally played on what day?', 'multiple_choice');
SET @q40 = LAST_INSERT_ID();


-- NCAA Basketball Questions (@quizIdNCAAB)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'What is the NCAA term for the championship tournament?', 'multiple_choice');
SET @q41 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which teams have won multiple NCAA Men''s Basketball championships?', 'multiple_answer');
SET @q42 = LAST_INSERT_ID();
-- New NCAA Basketball Questions (18 added)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which school has the most NCAA men''s basketball championships?', 'multiple_choice');
SET @q43 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Who is the all-time leading scorer in NCAA Division I men''s basketball history?', 'multiple_choice');
SET @q44 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which of the following schools are members of the Big 12 Conference?', 'multiple_answer');
SET @q45 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'What is the name of the trophy awarded to the winner of the NCAA Men''s Basketball Tournament?', 'multiple_choice');
SET @q46 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'What is the term for a perfect season (undefeated) in NCAA basketball?', 'multiple_choice');
SET @q47 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which of the following coaches have won multiple NCAA men''s basketball championships?', 'multiple_answer');
SET @q48 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'What is the record for the most points scored in a single NCAA tournament game by one player?', 'multiple_choice');
SET @q49 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which of these are regions in the NCAA Men''s Basketball Tournament?', 'multiple_answer');
SET @q50 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Who is considered the "King of College Basketball"?', 'multiple_choice');
SET @q51 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'What is the name of the annual tournament held at Madison Square Garden?', 'multiple_choice');
SET @q52 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which of the following teams have a long-standing rivalry?', 'multiple_answer');
SET @q53 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'How many teams participate in the NCAA Men''s Basketball Tournament?', 'multiple_choice');
SET @q54 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which of these schools is a perennial powerhouse in women''s college basketball?', 'multiple_answer');
SET @q55 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Who scored the game-winning shot for Villanova in the 2016 national championship game?', 'multiple_choice');
SET @q56 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'What is the term for an unexpected upset of a higher-seeded team?', 'multiple_choice');
SET @q57 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which of the following cities have hosted the Final Four?', 'multiple_answer');
SET @q58 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'What is the term for the 16 teams that advance to the regional semifinals?', 'multiple_choice');
SET @q59 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAAB, 'Which of these players went on to have a successful NBA career?', 'multiple_answer');
SET @q60 = LAST_INSERT_ID();

-- NBA Questions (@quizIdNBA)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which player has the most NBA championships?', 'multiple_choice');
SET @q61 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of the following players have won an NBA MVP award?', 'multiple_answer');
SET @q62 = LAST_INSERT_ID();
-- New NBA Questions (18 added)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Who is the all-time leading scorer in NBA history?', 'multiple_choice');
SET @q63 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which team drafted Kobe Bryant?', 'multiple_choice');
SET @q64 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of the following teams have won multiple NBA championships since 2010?', 'multiple_answer');
SET @q65 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'What is the name of the trophy awarded to the NBA Finals winner?', 'multiple_choice');
SET @q66 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Who holds the record for the most assists in a single NBA game?', 'multiple_choice');
SET @q67 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of the following are NBA Eastern Conference teams?', 'multiple_answer');
SET @q68 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Who holds the record for the most rebounds in a single NBA game?', 'multiple_choice');
SET @q69 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of the following are former NBA teams that no longer exist?', 'multiple_answer');
SET @q70 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'What is the height of a standard NBA basketball hoop?', 'multiple_choice');
SET @q71 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which player has the most career assists?', 'multiple_choice');
SET @q72 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of the following players have won a Defensive Player of the Year award?', 'multiple_answer');
SET @q73 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'The "Splash Brothers" nickname refers to which two players?', 'multiple_choice');
SET @q74 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of these cities has hosted an NBA All-Star Game since 2010?', 'multiple_answer');
SET @q75 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which team has the most NBA championships as a franchise?', 'multiple_choice');
SET @q76 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of the following players have played for the Los Angeles Lakers?', 'multiple_answer');
SET @q77 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Who holds the record for the most points scored in a single NBA game?', 'multiple_choice');
SET @q78 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'Which of the following are NBA Western Conference teams?', 'multiple_answer');
SET @q79 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNBA, 'What is the term for a player who has a triple-double?', 'multiple_choice');
SET @q80 = LAST_INSERT_ID();


-- NCAA Baseball Questions (@quizIdNCAABA)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'What is the NCAA term for the championship tournament?', 'multiple_choice');
SET @q81 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which teams have won multiple NCAA Baseball championships?', 'multiple_answer');
SET @q82 = LAST_INSERT_ID();
-- New NCAA Baseball Questions (18 added)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which school has the most College World Series titles?', 'multiple_choice');
SET @q83 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'The "Super Regionals" in the NCAA Baseball Tournament consist of how many teams?', 'multiple_choice');
SET @q84 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of the following schools are members of the SEC?', 'multiple_answer');
SET @q85 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'What is the name of the stadium that hosts the College World Series?', 'multiple_choice');
SET @q86 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of the following teams have won a College World Series since 2010?', 'multiple_answer');
SET @q87 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Who won the 2024 College World Series?', 'multiple_choice');
SET @q88 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of these are regions in the NCAA Baseball Tournament?', 'multiple_answer');
SET @q89 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'What is the name of the trophy awarded to the winner of the College World Series?', 'multiple_choice');
SET @q90 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of the following teams are in the Big Ten conference?', 'multiple_answer');
SET @q91 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'What is the term for a perfect season (undefeated) in NCAA baseball?', 'multiple_choice');
SET @q92 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of these schools is a perennial powerhouse in college baseball?', 'multiple_answer');
SET @q93 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'What is the distance from home plate to the pitcher''s mound?', 'multiple_choice');
SET @q94 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of these are common types of pitches in baseball?', 'multiple_answer');
SET @q95 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which college baseball team is known as "The Tigers"?', 'multiple_choice');
SET @q96 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'What is the name of the annual tournament held at the University of Omaha?', 'multiple_choice');
SET @q97 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of the following teams have a long-standing rivalry?', 'multiple_answer');
SET @q98 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'How many innings are in a standard NCAA baseball game?', 'multiple_choice');
SET @q99 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNCAABA, 'Which of these players went on to have a successful MLB career?', 'multiple_answer');
SET @q100 = LAST_INSERT_ID();


-- MLB Questions (@quizIdMLB)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Which player has the most career home runs?', 'multiple_choice');
SET @q101 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Which of these teams have won a World Series since 2010?', 'multiple_answer');
SET @q102 = LAST_INSERT_ID();
-- New MLB Questions (18 added)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Who is the all-time leading hitter in MLB history?', 'multiple_choice');
SET @q103 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Which team is known as "The Bronx Bombers"?', 'multiple_choice');
SET @q104 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Which of the following teams have won multiple World Series championships since 2000?', 'multiple_answer');
SET @q105 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'What is the name of the trophy awarded to the winner of the World Series?', 'multiple_choice');
SET @q106 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Who holds the record for the most strikeouts in a single MLB game?', 'multiple_choice');
SET @q107 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Which of the following are MLB American League teams?', 'multiple_answer');
SET @q108 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Who holds the record for the most career hits?', 'multiple_choice');
SET @q109 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Which of the following are former MLB teams that no longer exist?', 'multiple_answer');
SET @q110 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'What is the distance from home plate to the outfield wall in most ballparks?', 'multiple_choice');
SET @q111 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdMLB, 'Which player has the most career RBIs?', 'multiple_choice');
SET @q112 = LAST_INSERT_ID();
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q113, 'Clayton Kershaw', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q113, 'Max Scherzer', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q113, 'Randy Johnson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q113, 'Justin Verlander', TRUE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q114, 'Fenway Park', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q114, 'Wrigley Field', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q114, 'Yankee Stadium', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q114, 'Dodger Stadium', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q115, 'Phoenix', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q115, 'New York', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q115, 'Los Angeles', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q115, 'Miami', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q116, 'New York Yankees', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q116, 'Boston Red Sox', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q116, 'St. Louis Cardinals', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q116, 'Los Angeles Dodgers', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q117, 'Babe Ruth', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q117, 'Derek Jeter', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q117, 'Alex Rodriguez', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q117, 'Mariano Rivera', TRUE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q118, 'When a pitcher completes a game without allowing any base runners', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q118, 'When a pitcher completes a game without allowing any hits', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q118, 'When a pitcher completes a game without allowing any earned runs', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q118, 'When a pitcher completes a game without allowing any walks', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q119, 'Chicago Cubs', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q119, 'Los Angeles Dodgers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q119, 'Atlanta Braves', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q119, 'New York Yankees', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q120, 'When a player hits a single, double, triple, and home run in the same game', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q120, 'When a player hits a home run with the bases loaded', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q120, 'When a player hits four home runs in the same game', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q120, 'When a player hits three home runs in the same game', FALSE);

-- Answers for Another NFL Trivia Quiz (@quizIdNFL2)
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Bart Starr', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Joe Namath', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Johnny Unitas', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Vince Lombardi', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Miami Dolphins', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Atlanta Falcons', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Jacksonville Jaguars', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Tampa Bay Buccaneers', TRUE);

-- Answers for new NFL Trivia Quiz questions
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q123, 'Reggie White', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q123, 'Bruce Smith', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q123, 'Lawrence Taylor', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q123, 'Michael Strahan', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q124, 'Seattle Seahawks', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q124, 'Denver Broncos', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q124, 'Baltimore Ravens', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q124, 'San Francisco 49ers', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q125, 'Pittsburgh Steelers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q125, 'Dallas Cowboys', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q125, 'New England Patriots', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q125, 'Green Bay Packers', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q126, 'The George Halas Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q126, 'The Lamar Hunt Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q126, 'The Vince Lombardi Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q126, 'The Super Bowl Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q127, 'Jerry Rice', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q127, 'Randy Moss', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q127, 'Calvin Johnson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q127, 'Michael Thomas', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q128, 'AFC West', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q128, 'NFC North', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q128, 'AFC South', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q128, 'NFC West', TRUE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q129, 'Joe Montana', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q129, 'Tom Brady', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q129, 'Jerry Rice', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q129, 'Peyton Manning', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q130, 'LaDainian Tomlinson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q130, 'Adrian Peterson', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q130, 'Emmitt Smith', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q130, 'Shaun Alexander', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q131, 'Aaron Rodgers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q131, 'Brett Favre', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q131, 'Bart Starr', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q131, 'Joe Montana', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q132, 'Touchdown', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q132, 'Field Goal', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q132, 'Safety', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q132, 'Interception', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q133, 'Miami', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q133, 'New Orleans', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q133, 'Las Vegas', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q133, 'Phoenix', TRUE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q134, 'Tennessee Titans', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q134, 'Memphis Tigers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q134, 'Nashville Predators', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q134, 'Nashville SC', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q135, '4-3', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q135, '3-4', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q135, 'Nickel', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q135, 'Quarter', TRUE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q136, 'The Vince Lombardi Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q136, 'The Lamar Hunt Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q136, 'The George Halas Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q136, 'The Super Bowl Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q137, 'A pick', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q137, 'A sack', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q137, 'A fumble', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q137, 'A touchdown', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q138, 'Lambeau Field', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q138, 'Allegiant Stadium', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q138, 'Lumen Field', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q138, 'Mercedes-Benz Stadium', TRUE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q139, 'LaDainian Tomlinson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q139, 'Adrian Peterson', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q139, 'Emmitt Smith', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q139, 'Shaun Alexander', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q140, 'Quarterback', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q140, 'Wide Receiver', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q140, 'Linebacker', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q140, 'Center', TRUE);

-- Step 4: Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;
INSERT INTO users (id, username, password, email)
VALUES (1, 'testuser', 'mock_hashed_password', 'test@example.com');
