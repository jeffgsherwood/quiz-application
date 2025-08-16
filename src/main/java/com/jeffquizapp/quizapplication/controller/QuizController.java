package com.jeffquizapp.quizapplication.controller;

import com.jeffquizapp.quizapplication.dto.QuizSubmissionDto;
import com.jeffquizapp.quizapplication.model.Quiz;
import com.jeffquizapp.quizapplication.model.Question;
import com.jeffquizapp.quizapplication.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;

@RestController
@RequestMapping("/api/quizzes")
// This annotation is crucial for allowing your React frontend to make requests
// to your Spring Boot backend, solving the CORS policy error.
// We specify the origin of your frontend application.
@CrossOrigin(origins = "http://localhost:5173")
public class QuizController {

    private final QuizService quizService;

    @Autowired
    public QuizController(QuizService quizService) {
        this.quizService = quizService;
    }

    @GetMapping
    public ResponseEntity<List<Quiz>> getAllQuizzes() {
        List<Quiz> quizzes = quizService.getAllQuizzes();
        return ResponseEntity.ok(quizzes);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Quiz> getQuizById(@PathVariable Long id) {
        return quizService.getQuizById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
    
    // Endpoint to get all questions for a specific quiz
    @GetMapping("/{id}/questions")
    public ResponseEntity<List<Question>> getQuestionsByQuizId(@PathVariable Long id) {
        List<Question> questions = quizService.getQuestionsByQuizId(id);
        if (questions.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(questions);
    }
    
    @PostMapping("/submit")
    public ResponseEntity<Integer> submitQuiz(@RequestBody QuizSubmissionDto submission) {
        int score = quizService.gradeQuiz(submission);
        if (score == -1) {
            // This indicates a problem with the submission (e.g., quiz or user not found)
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(score);
    }
}