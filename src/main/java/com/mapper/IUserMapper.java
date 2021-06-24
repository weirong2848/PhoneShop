package com.mapper;

import org.apache.ibatis.annotations.*;
import com.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserMapper{

    List<User> findAllUser();

    @Select("select username,password,isadmin,gold from tb_user where username = #{username}")
    User queryUserByName(String username);

    @Insert("insert into tb_user(username,password,gold,isadmin)values(#{username},#{password},#{gold},#{isadmin})")
    void insertUser(User user);

    @Delete("delete from tb_user where username=?")
    void deleteByname(String username);

    @Update("update tb_user set gold=#{gold} where username = #{username}")
    void updateUser(@Param("username") String username,@Param("gold") Integer gold);

    @Update("update tb_user set password=#{password} where username = #{username}")
    void updatePassword(@Param("username") String username,@Param("password") String password);
}
