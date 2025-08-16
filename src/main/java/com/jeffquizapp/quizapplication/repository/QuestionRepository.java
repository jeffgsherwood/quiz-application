// QuestionRepository.java (added EntityGraph for eager fetching of answers)
package com.jeffquizapp.quizapplication.repository;

import com.jeffquizapp.quizapplication.model.Question;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {
    @EntityGraph(attributePaths = {"answers"}, type = EntityGraph.EntityGraphType.FETCH)
    List<Question> findByQuizId(Long quizId);
}