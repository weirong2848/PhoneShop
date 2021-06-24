package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.entity.UserAddress;
import com.mapper.IUserAddressMapper;
import com.service.IUserAddressService;

import java.util.List;

@Service("userInfoService")
public class UserAddressServiceImpl implements IUserAddressService {

    @Autowired
    private IUserAddressMapper userAddressMapper;

    @Override
    public List<UserAddress> findUserAddressByUsername(String username) {
        return userAddressMapper.findUserAddressByUsername(username);
    }

    @Override
    public void insertUserAddress(UserAddress userAddress) {
        userAddressMapper.insertUserAddress(userAddress);
    }

    @Override
    public void updateUserAddress(String name, String phone, String address,String postalcode, String username) {
        userAddressMapper.updateUserAddress(name,phone,address,postalcode,username);
    }

    @Override
    public void deleteUserAddress(String id, String username) {
        userAddressMapper.deleteUserAddress(id,username);
    }
}
