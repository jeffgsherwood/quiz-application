-- data.sql (added answers for @q1 to @q112 based on accurate facts from web search; ensured matching with question types; cleaned up and completed for all quizzes)
USE quiz_application;
-- clear_database.sql
-- Step 1: Disable foreign key checks to allow truncating tables with dependencies
SET FOREIGN_KEY_CHECKS = 0;

-- Step 2: Truncate tables to remove all data and reset auto-increment counters
TRUNCATE TABLE quiz_history;
TRUNCATE TABLE answers;
TRUNCATE TABLE questions;
TRUNCATE TABLE quizzes;

-- Step 3: Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

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

-- Added: Another NFL Trivia Quiz Questions (@quizIdNFL2)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Who was the MVP of Super Bowl I?', 'multiple_choice');
SET @q121 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which NFL teams are based in the state of Florida?', 'multiple_answer');
SET @q122 = LAST_INSERT_ID();
-- Added: New NFL Trivia Quiz Questions (18 added)
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Who holds the record for the most career sacks in the NFL?', 'multiple_choice');
SET @q123 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which NFL team is famous for its "12th Man" tradition?', 'multiple_choice');
SET @q124 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which NFL teams have won at least 5 Super Bowls?', 'multiple_answer');
SET @q125 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'What is the name of the trophy awarded to the AFC Championship winner?', 'multiple_choice');
SET @q126 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Who holds the record for the most receiving yards in a single NFL season?', 'multiple_choice');
SET @q127 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which of the following are NFL divisions?', 'multiple_answer');
SET @q128 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which players have won multiple Super Bowl MVP awards?', 'multiple_answer');
SET @q129 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Who holds the record for the most rushing touchdowns in a single season?', 'multiple_choice');
SET @q130 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which quarterbacks have played for the Green Bay Packers?', 'multiple_answer');
SET @q131 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'What is the term for scoring 6 points in football?', 'multiple_choice');
SET @q132 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which cities have hosted the Super Bowl?', 'multiple_answer');
SET @q133 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which NFL team is based in Tennessee?', 'multiple_choice');
SET @q134 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which of the following are common defensive formations in the NFL?', 'multiple_answer');
SET @q135 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'What is the name of the trophy awarded to the NFC Championship winner?', 'multiple_choice');
SET @q136 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'What is another term for an interception?', 'multiple_choice');
SET @q137 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which of the following are NFL stadiums?', 'multiple_answer');
SET @q138 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Who holds the record for the most rushing touchdowns in a single season?', 'multiple_choice');
SET @q139 = LAST_INSERT_ID();
INSERT INTO questions (quiz_id, question_text, type) VALUES (@quizIdNFL2, 'Which of the following are positions in American football?', 'multiple_answer');
SET @q140 = LAST_INSERT_ID();

-- Step 4: Insert answers for all quizzes
-- Answers for NFL Trivia Blitz (@quizIdNFL)
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q1, 'New England Patriots', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q1, 'Pittsburgh Steelers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q1, 'San Francisco 49ers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q1, 'Dallas Cowboys', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q2, 'Tom Brady', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q2, 'Drew Brees', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q2, 'Peyton Manning', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q2, 'Brett Favre', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q3, 'Vince Lombardi Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q3, 'Lamar Hunt Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q3, 'George Halas Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q3, 'Ed Thorp Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q4, 'Emmitt Smith', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q4, 'Walter Payton', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q4, 'Frank Gore', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q4, 'Barry Sanders', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q5, 'AFC and NFC', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q5, 'East and West', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q5, 'North and South', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q5, 'Central and Pacific', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q6, 'Green Bay Packers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q6, 'Kansas City Chiefs', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q6, 'New York Jets', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q6, 'Baltimore Colts', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q7, '6', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q7, '3', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q7, '2', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q7, '7', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q8, 'Mike Vrabel', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q8, 'Bill Belichick', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q8, 'Jerod Mayo', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q8, 'Pete Carroll', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q9, '11', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q9, '10', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q9, '12', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q9, '9', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q10, 'The area between the 20-yard line and the goal line', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q10, 'The area around the 50-yard line', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q10, 'The end zone', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q10, 'The sidelines', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q11, 'Center', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q11, 'Guard', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q11, 'Tackle', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q11, 'Quarterback', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q12, 'Patrick Mahomes', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q12, 'Travis Kelce', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q12, 'Tyreek Hill', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q12, 'Alex Smith', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q13, 'Dallas Cowboys', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q13, 'Philadelphia Eagles', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q13, 'Green Bay Packers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q13, 'New York Giants', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q14, 'AFC', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q14, 'NFC', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q14, 'East', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q14, 'West', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q15, 'John Elway', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q15, 'Peyton Manning', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q15, 'Russell Wilson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q15, 'Drew Lock', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q16, '10', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q16, '5', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q16, '15', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q16, '20', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q17, '3', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q17, '2', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q17, '6', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q17, '1', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q18, 'Miami', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q18, 'New Orleans', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q18, 'Atlanta', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q18, 'Chicago', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q19, 'Holding', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q19, 'Pass Interference', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q19, 'Offsides', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q19, 'Touchdown', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q20, 'Philadelphia Eagles', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q20, 'Atlanta Falcons', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q20, 'Baltimore Ravens', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q20, 'Seattle Seahawks', FALSE);

-- Answers for NCAA Football (@quizIdNCAAFB)
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q21, 'Tennessee Volunteers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q21, 'Alabama Crimson Tide', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q21, 'Georgia Bulldogs', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q21, 'Florida Gators', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q22, 'Alabama', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q22, 'Florida', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q22, 'Georgia', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q22, 'Ohio State', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q23, 'USC', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q23, 'Ohio State', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q23, 'Oklahoma', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q23, 'Notre Dame', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q24, 'Alabama and Auburn', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q24, 'Georgia and Florida', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q24, 'LSU and Texas A&M', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q24, 'Tennessee and Kentucky', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q25, 'ACC', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q25, 'Big Ten', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q25, 'Big 12', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q25, 'Mountain West', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q26, 'SEC Championship Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q26, 'Heisman Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q26, 'Lambert Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q26, 'Outland Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q27, 'Yale', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q27, 'Alabama', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q27, 'Michigan', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q27, 'Princeton', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q28, 'Ohio State', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q28, 'Michigan', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q28, 'Penn State', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q28, 'Texas', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q29, 'Florida Gators', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q29, 'LSU Tigers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q29, 'Georgia Bulldogs', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q29, 'Alabama Crimson Tide', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q30, 'LSU', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q30, 'Auburn', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q30, 'Clemson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q30, 'Ohio State', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q31, 'Jay Berwanger', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q31, 'Archie Griffin', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q31, 'Barry Sanders', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q31, 'Tim Tebow', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q32, 'Michigan Stadium', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q32, 'Beaver Stadium', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q32, 'Ohio Stadium', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q32, 'Kyle Field', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q33, 'Alabama', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q33, 'Clemson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q33, 'LSU', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q33, 'Stanford', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q34, 'December', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q34, 'November', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q34, 'October', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q34, 'September', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q35, 'Rose Bowl', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q35, 'Sugar Bowl', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q35, 'Fiesta Bowl', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q35, 'Alamo Bowl', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q36, 'Joe Paterno', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q36, 'Bobby Bowden', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q36, 'Nick Saban', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q36, 'Bear Bryant', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q37, 'The Horseshoe', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q37, 'The Shoe', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q37, 'The House That Harley Built', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q37, 'Big House', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q38, 'North Carolina–Virginia', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q38, 'Auburn–Georgia', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q38, 'Florida–Georgia', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q38, 'Alabama–Auburn', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q39, 'North Carolina', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q39, 'Florida State', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q39, 'Clemson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q39, 'Ohio State', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q40, 'January 1', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q40, 'December 25', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q40, 'February 1', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q40, 'November 28', FALSE);

-- Answers for NCAA Basketball (@quizIdNCAAB)
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q41, 'March Madness', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q41, 'Final Four', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q41, 'Big Dance', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q41, 'Sweet Sixteen', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q42, 'UCLA', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q42, 'Kentucky', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q42, 'North Carolina', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q42, 'Harvard', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q43, 'UCLA', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q43, 'Kentucky', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q43, 'North Carolina', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q43, 'Duke', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q44, 'Pete Maravich', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q44, 'Antoine Davis', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q44, 'Freeman Williams', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q44, 'Chris Clemons', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q45, 'Kansas', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q45, 'Baylor', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q45, 'Texas', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q45, 'Duke', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q46, 'NABC National Championship Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q46, 'Wooden Award', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q46, 'Naismith Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q46, 'Final Four Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q47, 'Perfect season', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q47, 'Undefeated season', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q47, 'Invincible season', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q47, 'Flawless season', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q48, 'John Wooden', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q48, 'Mike Krzyzewski', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q48, 'Adolph Rupp', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q48, 'Jim Calhoun', TRUE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q49, '61', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q49, '52', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q49, '41', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q49, '70', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q50, 'East', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q50, 'West', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q50, 'Midwest', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q50, 'North', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q51, 'Mike Krzyzewski', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q51, 'John Wooden', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q51, 'Bob Knight', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q51, 'Dean Smith', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q52, 'BIG EAST Tournament', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q52, 'NIT', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q52, 'Champions Classic', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q52, 'Jimmy V Classic', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q53, 'Duke-North Carolina', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q53, 'Kansas-Kentucky', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q53, 'Michigan-Michigan State', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q53, 'Harvard-Yale', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q54, '68', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q54, '64', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q54, '32', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q54, '16', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q55, 'UConn', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q55, 'South Carolina', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q55, 'Tennessee', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q55, 'Duke', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q56, 'Kris Jenkins', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q56, 'Ryan Arcidiacono', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q56, 'Marcus Paige', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q56, 'Joel Berry II', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q57, 'Cinderella', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q57, 'Upset', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q57, 'Bracket Buster', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q57, 'Dark Horse', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q58, 'Indianapolis', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q58, 'Detroit', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q58, 'Las Vegas', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q58, 'Boston', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q59, 'Sweet Sixteen', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q59, 'Elite Eight', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q59, 'Final Four', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q59, 'March Madness', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q60, 'Anthony Davis', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q60, 'Joel Embiid', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q60, 'Kobe Bryant', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q60, 'LeBron James', FALSE);

-- Answers for NBA (@quizIdNBA)
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q61, 'Bill Russell', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q61, 'Sam Jones', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q61, 'Tom Heinsohn', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q61, 'John Havlicek', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q62, 'Michael Jordan', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q62, 'LeBron James', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q62, 'Kareem Abdul-Jabbar', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q62, 'Kobe Bryant', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q63, 'LeBron James', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q63, 'Kareem Abdul-Jabbar', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q63, 'Karl Malone', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q63, 'Kobe Bryant', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q64, 'Charlotte Hornets', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q64, 'Los Angeles Lakers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q64, 'Chicago Bulls', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q64, 'Philadelphia 76ers', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q65, 'Golden State Warriors', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q65, 'Los Angeles Lakers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q65, 'Cleveland Cavaliers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q65, 'Miami Heat', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q66, 'Larry OBrien Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q66, 'Bill Russell Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q66, 'Michael Jordan Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q66, 'Kobe Bryant Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q67, 'Scott Skiles', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q67, 'John Stockton', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q67, 'Magic Johnson', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q67, 'Jason Kidd', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q68, 'Boston Celtics', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q68, 'New York Knicks', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q68, 'Philadelphia 76ers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q68, 'Los Angeles Lakers', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q69, 'Wilt Chamberlain', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q69, 'Bill Russell', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q69, 'Dennis Rodman', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q69, 'Moses Malone', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q70, 'Anderson Packers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q70, 'Baltimore Bullets', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q70, 'Chicago Stags', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q70, 'Los Angeles Lakers', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q71, '10 feet', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q71, '9 feet', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q71, '11 feet', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q71, '12 feet', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q72, 'John Stockton', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q72, 'Chris Paul', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q72, 'Jason Kidd', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q72, 'LeBron James', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q73, 'Dikembe Mutombo', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q73, 'Ben Wallace', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q73, 'Rudy Gobert', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q73, 'LeBron James', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q74, 'Stephen Curry and Klay Thompson', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q74, 'Kevin Durant and Russell Westbrook', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q74, 'LeBron James and Dwyane Wade', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q74, 'James Harden and Chris Paul', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q75, 'Los Angeles', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q75, 'New Orleans', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q75, 'Chicago', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q75, 'Boston', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q76, 'Boston Celtics', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q76, 'Los Angeles Lakers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q76, 'Chicago Bulls', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q76, 'San Antonio Spurs', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q77, 'LeBron James', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q77, 'Kobe Bryant', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q77, 'Shaquille ONeal', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q77, 'Stephen Curry', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q78, 'Wilt Chamberlain', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q78, 'Kobe Bryant', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q78, 'Devin Booker', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q78, 'Klay Thompson', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q79, 'Los Angeles Lakers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q79, 'Golden State Warriors', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q79, 'Denver Nuggets', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q79, 'Boston Celtics', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q80, 'Triple-double', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q80, 'Double-double', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q80, 'Quadruple-double', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q80, 'Five-by-five', FALSE);

-- Answers for NCAA Baseball (@quizIdNCAABA)
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q81, 'College World Series', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q81, 'March Madness', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q81, 'Final Four', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q81, 'Super Regionals', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q82, 'USC', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q82, 'LSU', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q82, 'Texas', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q82, 'Harvard', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q83, 'USC', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q83, 'LSU', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q83, 'Texas', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q83, 'Arizona State', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q84, '16', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q84, '64', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q84, '32', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q84, '8', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q85, 'Alabama', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q85, 'Arkansas', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q85, 'Auburn', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q85, 'Ohio State', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q86, 'Charles Schwab Field Omaha', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q86, 'TD Ameritrade Park', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q86, 'Rosenblatt Stadium', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q86, 'Folsom Field', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q87, 'Vanderbilt', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q87, 'South Carolina', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q87, 'LSU', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q87, 'Harvard', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q88, 'Tennessee', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q88, 'Texas A&M', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q88, 'Kentucky', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q88, 'North Carolina', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q89, 'Athens Regional', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q89, 'Clemson Regional', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q89, 'Corvallis Regional', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q89, 'National Regional', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q90, 'NCAA Championship Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q90, 'World Series Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q90, 'Commissioners Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q90, 'Golden Spikes Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q91, 'Illinois', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q91, 'Indiana', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q91, 'Iowa', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q91, 'LSU', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q92, 'Perfect season', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q92, 'Undefeated season', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q92, 'No-hit season', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q92, 'Grand slam season', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q93, 'Arkansas', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q93, 'Auburn', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q93, 'North Carolina', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q93, 'Harvard', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q94, '60 feet 6 inches', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q94, '90 feet', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q94, '46 feet', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q94, '50 feet', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q95, 'Fastball', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q95, 'Curveball', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q95, 'Slider', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q95, 'Touchdown', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q96, 'LSU', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q96, 'Auburn', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q96, 'Clemson', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q96, 'Missouri', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q97, 'SlumpBuster', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q97, 'College World Series', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q97, 'Super Regionals', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q97, 'Big Ten Tournament', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q98, 'Clemson - South Carolina', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q98, 'Mississippi State - Ole Miss', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q98, 'Florida - Florida State', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q98, 'Harvard - Yale', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q99, '9', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q99, '7', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q99, '6', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q99, '10', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q100, 'Justin Verlander', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q100, 'Bryce Harper', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q100, 'Albert Pujols', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q100, 'Babe Ruth', FALSE);

-- Answers for MLB (@quizIdMLB)
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q101, 'Barry Bonds', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q101, 'Hank Aaron', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q101, 'Babe Ruth', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q101, 'Albert Pujols', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q102, 'San Francisco Giants', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q102, 'Boston Red Sox', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q102, 'Los Angeles Dodgers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q102, 'New York Mets', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q103, 'Pete Rose', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q103, 'Ty Cobb', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q103, 'Hank Aaron', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q103, 'Stan Musial', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q104, 'New York Yankees', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q104, 'Boston Red Sox', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q104, 'Los Angeles Dodgers', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q104, 'Chicago Cubs', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q105, 'Boston Red Sox', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q105, 'San Francisco Giants', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q105, 'Los Angeles Dodgers', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q105, 'New York Mets', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q106, 'Commissioners Trophy', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q106, 'World Series Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q106, 'Larry OBrien Trophy', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q106, 'Vince Lombardi Trophy', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q107, 'Tom Cheney', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q107, 'Kerry Wood', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q107, 'Randy Johnson', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q107, 'Nolan Ryan', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q108, 'New York Yankees', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q108, 'Boston Red Sox', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q108, 'Baltimore Orioles', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q108, 'Chicago Cubs', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q109, 'Pete Rose', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q109, 'Ty Cobb', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q109, 'Hank Aaron', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q109, 'Ichiro Suzuki', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q110, 'Baltimore Orioles (NL)', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q110, 'Cleveland Blues', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q110, 'Washington Nationals (1886-1889)', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q110, 'New York Yankees', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q111, 'Varies by ballpark', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q111, '325 feet', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q111, '400 feet', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q111, '410 feet', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q112, 'Hank Aaron', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q112, 'Albert Pujols', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q112, 'Babe Ruth', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q112, 'Alex Rodriguez', FALSE);

-- Answers for Another NFL Trivia Quiz (@quizIdNFL2) -- These were already in the file and work, so kept as is
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Bart Starr', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Joe Namath', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Johnny Unitas', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q121, 'Vince Lombardi', FALSE);

INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Miami Dolphins', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Atlanta Falcons', FALSE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Jacksonville Jaguars', TRUE);
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q122, 'Tampa Bay Buccaneers', TRUE);

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
INSERT INTO answers (question_id, answer_text, is_correct) VALUES (@q129, 'Jerry Rice', FALSE);
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

-- Step 5: Update num_questions for all quizzes
UPDATE quizzes q SET num_questions = (SELECT COUNT(*) FROM questions WHERE quiz_id = q.id);

-- Step 6: Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;

-- Step 7: Insert user (ensure this is a new block)
INSERT INTO users (id, username, password, email)
VALUES (1, 'testuser', 'mock_hashed_password', 'test@example.com');