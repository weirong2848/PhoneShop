package com.service;

import com.entity.User;

import java.util.List;

public interface IUserService {

    List<User> findAllUser();

    User queryUserByName(String username);

    void insertUser(User user);

    void deleteByName(String username);

    void updateUser(String username,Integer gold);

    void updatePassword(String username, String password);
}
