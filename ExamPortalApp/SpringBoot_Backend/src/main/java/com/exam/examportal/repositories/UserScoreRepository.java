package com.exam.examportal.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.exam.examportal.entities.UserScore;


@Repository
public interface UserScoreRepository extends JpaRepository<UserScore, Long>{

	List<UserScore> findByUsername(String username);

}
