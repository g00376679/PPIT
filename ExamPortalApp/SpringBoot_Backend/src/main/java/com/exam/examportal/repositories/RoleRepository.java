package com.exam.examportal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.exam.examportal.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{

}
