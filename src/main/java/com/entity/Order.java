package com.entity;

import lombok.Data;

@Data
public class Order {

    private String orderid;
    private String username;
    private String time;
    private String name;
    private String phone;
    private String address;
    private Integer state;
    private Integer totalnumber;
    private double totalmoney;
    private String isdel;

}
