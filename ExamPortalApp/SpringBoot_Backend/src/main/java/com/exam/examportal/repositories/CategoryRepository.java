package com.exam.examportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.exam.examportal.entities.exam.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long>{

}
