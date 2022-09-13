package com.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * 弃用
 */
@Data
public class Parts implements Serializable {
    private Integer num;
    private String id;
    private String kind;
    private String brand;
    private String model;
    private double price;
    private String details;
    private String color;
    private String picture;

}
