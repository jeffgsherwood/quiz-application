package com.jeffquizapp.quizapplication.service;

import com.jeffquizapp.quizapplication.dto.QuizSubmissionDto;
import com.jeffquizapp.quizapplication.model.Question;
import com.jeffquizapp.quizapplication.model.Quiz;
import com.jeffquizapp.quizapplication.repository.QuestionRepository;
import com.jeffquizapp.quizapplication.repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class QuizService {

    private final QuizRepository quizRepository;
    private final QuestionRepository questionRepository;

    @Autowired
    public QuizService(QuizRepository quizRepository, QuestionRepository questionRepository) {
        this.quizRepository = quizRepository;
        this.questionRepository = questionRepository;
    }

    public List<Quiz> getAllQuizzes() {
        return quizRepository.findAll();
    }

    public Optional<Quiz> getQuizById(Long id) {
        return quizRepository.findById(id);
    }

    public int gradeQuiz(QuizSubmissionDto submission) {
        Optional<Quiz> quizOptional = quizRepository.findById(submission.getQuizId());

        if (!quizOptional.isPresent()) {
            // Handle case where quiz doesn't exist
            return -1; // Or throw an exception
        }

        Quiz quiz = quizOptional.get();
        int score = 0;
        int totalQuestions = quiz.getQuestions().size();

        // Fetch questions for the specific quiz
        List<Question> questions = questionRepository.findByQuizId(quiz.getId());

        for (Question question : questions) {
            String submittedAnswer = submission.getAnswers().get(question.getId());
            if (submittedAnswer != null && submittedAnswer.equalsIgnoreCase(question.getCorrectAnswer())) {
                score++;
            }
        }

        return (int) Math.round((double) score / totalQuestions * 100);
    }
    
}