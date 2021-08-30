package com.exam.examportal.services.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.examportal.entities.User;
import com.exam.examportal.entities.UserRole;
import com.exam.examportal.repositories.RoleRepository;
import com.exam.examportal.repositories.UserRepository;
import com.exam.examportal.services.UserService;


@Service
public class UserServiceImpl implements UserService {
	
	
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private RoleRepository roleRepository;
    
	@Override
	public User createUser(User user, Set<UserRole> userRoles) throws Exception {
	    User local = userRepository.findByUsername(user.getUsername());
	    if(local!=null) {
	    	System.out.println("User is already present");
	    	throw new Exception("User is already present");
	    }else {
	    	for(UserRole ur :userRoles) {
	    		roleRepository.save(ur.getRole());
	    	}
	    	user.getUserRoles().addAll(userRoles);
	    	local = userRepository.save(user);
	    	
	    }
	    return local;
	}

	@Override
	public User findByUsername(String username) {
		
		return userRepository.findByUsername(username);
	}

	@Override
	public void deleteUser(long id) {
		
		userRepository.deleteById(id);;
	}

}
