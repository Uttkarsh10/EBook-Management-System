package com.DAO;

import com.entity.user;

public interface UserDAO {
	public boolean userRegister(user us);
	
	public user login(String email, String password);
}
