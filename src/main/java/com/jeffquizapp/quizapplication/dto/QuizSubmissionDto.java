// QuizSubmissionDto.java (updated answers to Map<Long, List<String>> for handling multiple answers)
package com.jeffquizapp.quizapplication.dto;

import java.util.List;
import java.util.Map;

public class QuizSubmissionDto {

    private Long quizId;
    private Long userId;
    private Map<Long, List<String>> answers;

    public QuizSubmissionDto() {
        // Default constructor
    }

    public QuizSubmissionDto(Long quizId, Long userId, Map<Long, List<String>> answers) {
        this.quizId = quizId;
        this.userId = userId;
        this.answers = answers;
    }

    // Getters and Setters
    public Long getQuizId() {
        return quizId;
    }

    public void setQuizId(Long quizId) {
        this.quizId = quizId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Map<Long, List<String>> getAnswers() {
        return answers;
    }

    public void setAnswers(Map<Long, List<String>> answers) {
        this.answers = answers;
    }
}