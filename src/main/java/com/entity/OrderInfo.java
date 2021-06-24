package com.entity;

import lombok.Data;

@Data
public class OrderInfo {

    private String orderid;
    private Integer goodsID;
    private String model;
    private String color;
    private String memoryCapacity;
    private Integer number;
    private double price;
    private String picture;

}
