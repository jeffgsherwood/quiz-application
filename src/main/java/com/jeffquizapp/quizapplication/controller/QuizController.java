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

import java.util.List;

@RestController
@RequestMapping("/api/quizzes")
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

    @GetMapping("/{id}/questions")
    public ResponseEntity<List<Question>> getQuestionsByQuizId(@PathVariable Long id) {
        return ResponseEntity.ok(quizService.getQuestionsByQuizId(id));
    }

    @PostMapping("/submit")
    public ResponseEntity<Integer> submitQuiz(@RequestBody QuizSubmissionDto submission) {
        int score = quizService.gradeQuiz(submission);
        if (score == -1) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(score);
    }
}