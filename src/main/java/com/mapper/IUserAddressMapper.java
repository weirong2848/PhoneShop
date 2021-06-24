package com.mapper;

import com.entity.UserAddress;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserAddressMapper {

    @Select("select * from tb_useraddress where username = #{username}")
    List<UserAddress> findUserAddressByUsername(String username);

    @Insert("insert into tb_useraddress (id,name,phone,address,username,postalcode)values(#{id},#{name},#{phone},#{address},#{username},#{postalcode})")
    void insertUserAddress(UserAddress userAddress);

    @Update("update tb_useraddress set phone=#{phone},address=#{address},postalcode=#{postalcode} where name= #{name} and username = #{username}")
    void updateUserAddress(@Param("name") String name, @Param("phone") String phone, @Param("address") String address, @Param("postalcode") String postalcode, @Param("username") String username);

    @Delete("delete from tb_useraddress where id=#{id} and username=#{username}")
    void deleteUserAddress(@Param("id") String id, @Param("username") String username);
}
