package com.techelevator.dao;

import com.techelevator.model.User;

import java.util.List;

public interface UserDAO {

    User findByUsername(String username);
    User findUsernameById(long userId);
    long findIdByUsername(String username);

    boolean create(String username, String password, String role);
}
