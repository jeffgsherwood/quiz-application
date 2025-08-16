// QuizService.java (updated gradeQuiz to use is_correct from answers for grading, supporting both multiple_choice and multiple_answer; questions fetched with answers via repository)
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
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

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

    public List<Question> getQuestionsByQuizId(Long quizId) {
        return questionRepository.findByQuizId(quizId);
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
        List<Question> questions = questionRepository.findByQuizId(quiz.getId());
        int totalQuestions = questions.size();

        for (Question question : questions) {
            List<String> submitted = submission.getAnswers().getOrDefault(question.getId(), List.of());
            Set<String> submittedSet = new HashSet<>(submitted);

            List<String> correctAnswers = question.getAnswers().stream()
                    .filter(a -> a.getIsCorrect())
                    .map(a -> a.getAnswerText())
                    .collect(Collectors.toList());

            boolean allCorrectSelected = true;
            boolean noIncorrectSelected = true;

            for (String correct : correctAnswers) {
                if (!submittedSet.contains(correct)) {
                    allCorrectSelected = false;
                }
            }

            for (String submittedAnswer : submitted) {
                if (!correctAnswers.contains(submittedAnswer)) {
                    noIncorrectSelected = false;
                }
            }

            if (allCorrectSelected && noIncorrectSelected && !submitted.isEmpty()) {
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