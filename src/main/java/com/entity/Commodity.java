package com.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Commodity implements Serializable {

    private String id;
    private Integer commodityNumber;
    private String brand;
    private String model;
    private String color1;
    private String color2;
    private String color3;
    private String memoryCapacity1;
    private double price1;
    private String memoryCapacity2;
    private double price2;
    private String memoryCapacity3;
    private double price3;
    private String picture;
    private String commoditydetails;
    private Integer category;

}
