package com.service;

import com.entity.UserAddress;

import java.util.List;

public interface IUserAddressService {

    List<UserAddress> findUserAddressByUsername(String username);

    void insertUserAddress(UserAddress userAddress);

    void updateUserAddress(String name, String phone, String address, String postalcode, String username);

    void deleteUserAddress(String id, String username);

}
