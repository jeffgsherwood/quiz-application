package com.jeffquizapp.quizapplication.repository;

import com.jeffquizapp.quizapplication.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuizHistoryRepository extends JpaRepository<Quiz, Long> {
}