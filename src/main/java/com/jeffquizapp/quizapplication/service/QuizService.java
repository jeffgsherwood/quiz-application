package com.jeffquizapp.quizapplication.service;

import com.jeffquizapp.quizapplication.dto.QuizSubmissionDto;
import com.jeffquizapp.quizapplication.model.Question;
import com.jeffquizapp.quizapplication.model.Quiz;
import com.jeffquizapp.quizapplication.model.QuizHistory;
import com.jeffquizapp.quizapplication.model.User;
import com.jeffquizapp.quizapplication.repository.QuestionRepository;
import com.jeffquizapp.quizapplication.repository.QuizHistoryRepository;
import com.jeffquizapp.quizapplication.repository.QuizRepository;
import com.jeffquizapp.quizapplication.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class QuizService {

    private final QuizRepository quizRepository;
    private final QuestionRepository questionRepository;
    private final UserRepository userRepository;
    private final QuizHistoryRepository quizHistoryRepository;


    @Autowired
    public QuizService(QuizRepository quizRepository, QuestionRepository questionRepository, UserRepository userRepository, QuizHistoryRepository quizHistoryRepository) {
        this.quizRepository = quizRepository;
        this.questionRepository = questionRepository;
        this.userRepository = userRepository;
        this.quizHistoryRepository = quizHistoryRepository;
    }

    public List<Quiz> getAllQuizzes() {
        return quizRepository.findAll();
    }

    public Optional<Quiz> getQuizById(Long id) {
        return quizRepository.findById(id);
    }

    public int gradeQuiz(QuizSubmissionDto submission) {
        Optional<Quiz> quizOptional = quizRepository.findById(submission.getQuizId());
        Optional<User> userOptional = userRepository.findById(submission.getUserId());

        if (!quizOptional.isPresent() || !userOptional.isPresent()) {
            return -1;
        }

        Quiz quiz = quizOptional.get();
        User user = userOptional.get();
        int score = 0;
        int totalQuestions = quiz.getQuestions().size();

        List<Question> questions = questionRepository.findByQuizId(quiz.getId());

        for (Question question : questions) {
            String submittedAnswer = submission.getAnswers().get(question.getId());
            if (submittedAnswer != null && submittedAnswer.equalsIgnoreCase(question.getCorrectAnswer())) {
                score++;
            }
        }
        
        int percentageScore = (int) Math.round((double) score / totalQuestions * 100);

        // Save the quiz history
        QuizHistory quizHistory = new QuizHistory();
        quizHistory.setUser(user);
        quizHistory.setQuiz(quiz);
        quizHistory.setScore(percentageScore);
        quizHistory.setSubmissionDate(LocalDateTime.now());
        quizHistoryRepository.save(quizHistory);

        return percentageScore;
    }
}