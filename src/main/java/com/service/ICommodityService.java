package com.service;

import com.entity.Commodity;

import java.util.List;

public interface ICommodityService {

    List<Commodity> findAllPhone();

    List<Commodity> findPhoneByModel(String model);

    List<Commodity> findSomePhone(String world);

    List<Commodity> findPhoneByCategoryAndNumber(Integer category, List<Integer> list);

    List<Commodity> findPhoneByBrand(String brand,Integer category);

    List<Commodity> findCommodityByCategory(Integer category);
}
