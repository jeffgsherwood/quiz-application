package com.jeffquizapp.quizapplication.dto;

import lombok.Data;
import java.util.Map;

@Data
public class QuizSubmissionDto {
    private Long quizId;
    private Map<Long, String> answers;
}