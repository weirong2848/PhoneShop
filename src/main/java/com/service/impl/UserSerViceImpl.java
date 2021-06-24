package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.entity.User;
import com.mapper.IUserMapper;
import com.service.IUserService;

import java.util.List;

@Service("userService")
public class UserSerViceImpl implements IUserService {

    @Autowired
    private IUserMapper userMapper;

    @Override
    public List<User> findAllUser() {
        return null;
    }

    @Override
    public User queryUserByName(String username) {
        return userMapper.queryUserByName(username);
    }

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }


    @Override
    public void deleteByName(String username) {
        userMapper.deleteByname(username);
    }

    @Override
    public void updateUser(String username, Integer gold) {
        userMapper.updateUser(username,gold);
    }

    @Override
    public void updatePassword(String username, String password) {
        userMapper.updatePassword(username,password);
    }
}
