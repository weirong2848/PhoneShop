package com.mapper;

import com.entity.Order;
import com.entity.OrderInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IOrderMapper {

    @Select("select orderid,username,DATE_FORMAT(time,'%Y-%m-%d %H:%i:%s')as time,name,phone,address,state,totalnumber,totalmoney,isdel from `tb_order` where username=#{username} and isdel ='0' order by time desc")
    List<Order> findOrderByUsername(String username);

    @Select("select orderid,username,DATE_FORMAT(time,'%Y-%m-%d %H:%i:%s')as time,name,phone,address,state,totalnumber,totalmoney,isdel from `tb_order` where username=#{username} and state=#{state} order by time desc")
    List<Order> findOrderByUsernameAndState(@Param("username") String username, @Param("state") Integer state);

    @Update("update `tb_order` set state=#{state} where username=#{username}")
    void updateOrder(@Param("username") String username, @Param("state") Integer state);

    @Update("update `tb_order` set isdel=#{isdel} where orderid=#{orderid}")
    void updateOrderIsdel(@Param("orderid") String orderid, @Param("isdel") String isdel);

    @Update("update `tb_order` set state=#{state} where orderid=#{orderid}")
    void updateOrderByOrderId(@Param("username") String username, @Param("state") Integer state,@Param("orderid")String orderid);

    @Select("select * from tb_orderinfo where orderid=#{orderid}")
    List<OrderInfo> findOrderInfoByOrderid(String orderid);

    @Select("select * from `tb_order` where orderid=#{orderid}")
    Order findOrderByOrderid(String orderid);

    @Insert("insert into `tb_order`(orderid,username,time,name,phone,address,state,totalnumber,totalmoney,isdel) values(#{orderid},#{username},now(),#{name},#{phone},#{address},#{state},#{totalnumber},#{totalmoney},'0')")
    void insertOrder(Order order);

    @Insert("insert into tb_orderinfo(orderid,goodsID,model,color,memoryCapacity,number,price,picture) values(#{orderid},#{goodsID},#{model},#{color},#{memoryCapacity},#{number},#{price},#{picture})")
    void insertOrderInfo(OrderInfo orderInfo);

    @Delete("delete from `tb_order` where username=#{username} and state=#{state}")
    void deleteOrderByUsernameAndState(@Param("username") String username, @Param("state") Integer state);

    @Delete("delete from tb_orderinfo where orderid=#{orderid}")
    void deleteOrderInfoByOrderid(String orderid);

    @Select("select orderid from `tb_order` where username=#{username} and state=#{state}")
    List<String> findorderid(@Param("username") String username, @Param("state") Integer state);

    @Select("select * from tb_orderinfo")
    List<OrderInfo> findAllOrderinfo();
}
