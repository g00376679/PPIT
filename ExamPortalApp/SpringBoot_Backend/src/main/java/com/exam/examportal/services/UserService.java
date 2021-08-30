package com.exam.examportal.services;

import java.util.Set;

import com.exam.examportal.entities.User;
import com.exam.examportal.entities.UserRole;

public interface UserService {
	
	public User createUser(User user, Set<UserRole> userRoles) throws Exception;

	public User findByUsername(String username);

	public void deleteUser(long id);

}
