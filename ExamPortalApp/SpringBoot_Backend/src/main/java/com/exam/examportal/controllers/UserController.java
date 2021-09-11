package com.exam.examportal.controllers;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exam.examportal.entities.Role;
import com.exam.examportal.entities.User;
import com.exam.examportal.entities.UserRole;
import com.exam.examportal.services.UserService;

@RestController
@RequestMapping("/user")
@CrossOrigin(origins = "http://localhost:4200")
public class UserController {
	
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	@PostMapping("/register")
	public User createUser(@RequestBody User user) throws Exception {
		
	Set<UserRole> roles = new HashSet<>();
	user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	Role role = new Role();
	role.setRoleId(45L);
	role.setRoleName("NORMAL");
	
	UserRole userRole = new UserRole();
	userRole.setUser(user);
	userRole.setRole(role);
	
	roles.add(userRole);
	
	return userService.createUser(user, roles);
	
	}
	@GetMapping("/{username}")
	public User getUser(@PathVariable("username") String username) {
		User user = userService.findByUsername(username);
		return user;
		
	}
	
	@DeleteMapping("/{userId}")
	public void getUser(@PathVariable("userId") long id) {
		userService.deleteUser(id);
	
		
	}
}
