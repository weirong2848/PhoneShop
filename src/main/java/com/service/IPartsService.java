package com.service;

import com.entity.Parts;

import java.util.List;

/**
 * 弃用
 */
public interface IPartsService {

    List<Parts> findAllParts();

    List<Parts> findPartsByID();

    List<Parts> findPartsByModel(String model);

    List<Parts> findSomeParts(String world);

    List<Parts> findPartsBykind(String kind);
}
