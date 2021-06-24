package com.service;

import com.entity.Order;
import com.entity.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IOrderService {

    List<Order> findOrderByUsername(String username);

    List<Order> findOrderByUsernameAndState(String username, Integer state);

    List<OrderInfo> findOrderInfoByOrderid(String orderid);

    void insertOrder(Order order);

    void insertOrderInfo(OrderInfo orderInfo);

    void updateOrder(String username, Integer state);

    void updateOrderIsdel(String orderid,String isdel);

    void updateOrderByOrderId(String username, Integer state,String orderid);

    void deleteOrderByUsernameAndState(String username, Integer state);

    void deleteOrderInfoByOrderid(String orderid);

    List findorderid(String username, Integer state);

    List<OrderInfo> findAllOrderinfo();

    Order findOrderByOrderid(String orderid);

}
