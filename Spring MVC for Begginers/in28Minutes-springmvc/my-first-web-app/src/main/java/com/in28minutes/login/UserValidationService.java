package com.in28minutes.login;

import org.springframework.stereotype.Service;

@Service
public class UserValidationService {
	
	public boolean isValid(String name, String password) {
		if(name.equals("Rodrigo")&& password.equals("Leao2001")) {
			return true;
		}else {
			return false;
		}
	}

}
