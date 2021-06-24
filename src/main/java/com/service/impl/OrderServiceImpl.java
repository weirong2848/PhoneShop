package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.entity.Order;
import com.entity.OrderInfo;
import com.mapper.IOrderMapper;
import com.service.IOrderService;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private IOrderMapper orderMapper;

    @Override
    public List<Order> findOrderByUsername(String username) {
        return orderMapper.findOrderByUsername(username);
    }

    @Override
    public List<Order> findOrderByUsernameAndState(String username,Integer state) {
        return orderMapper.findOrderByUsernameAndState(username,state);
    }

    @Override
    public List<OrderInfo> findOrderInfoByOrderid(String orderid) {
        return orderMapper.findOrderInfoByOrderid(orderid);
    }

    @Override
    public void insertOrder(Order order) {
        orderMapper.insertOrder(order);
    }

    @Override
    public void insertOrderInfo(OrderInfo orderInfo) {
        orderMapper.insertOrderInfo(orderInfo);
    }

    @Override
    public void updateOrder(String username, Integer state) {
        orderMapper.updateOrder(username,state);
    }

    @Override
    public void updateOrderIsdel(String orderid, String isdel) {
        orderMapper.updateOrderIsdel(orderid,isdel);
    }

    @Override
    public void updateOrderByOrderId(String username, Integer state, String orderid) {
        orderMapper.updateOrderByOrderId(username, state, orderid);
    }

    @Override
    public void deleteOrderByUsernameAndState(String username, Integer state) {
        orderMapper.deleteOrderByUsernameAndState(username,state);
    }

    @Override
    public void deleteOrderInfoByOrderid(String orderid) {
        orderMapper.deleteOrderInfoByOrderid(orderid);
    }

    @Override
    public List findorderid(String username, Integer state) {
        return orderMapper.findorderid(username,state);
    }

    @Override
    public List<OrderInfo> findAllOrderinfo() {
        return orderMapper.findAllOrderinfo();
    }

    @Override
    public Order findOrderByOrderid(String orderid) {
        return orderMapper.findOrderByOrderid(orderid);
    }

}
