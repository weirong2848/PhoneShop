package com.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class ShoppingCart implements Serializable {

    private String id;
    private Integer goodsID;
    private String model;
    private String color;
    private String memoryCapacity;
    private Integer number;
    private double price;
    private String picture;
    private String username;
    private Integer state;

}
