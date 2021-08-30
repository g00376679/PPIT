package com.exam.examportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.exam.examportal.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	User findByUsername(String username);

}
