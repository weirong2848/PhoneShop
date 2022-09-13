package com.service;

import com.entity.Commodity;
import com.entity.CommodityInfo;

import java.util.List;

public interface ICommodityService {

    List<Commodity> findAllPhone();

    List<Commodity> findPhoneByModel(String model);

    List<Commodity> findSomePhone(String world);

    List<Commodity> findPhoneByCategoryAndNumber(Integer category, List<Integer> list);

    List<Commodity> findPhoneByBrand(String brand,Integer category);

    List<Commodity> findCommodityByCategory(Integer category);

    Commodity findPhoneByCommodityId(String commodityId);

    List<CommodityInfo> findCommodityInfoByCommodityId(String commodityId);

    List<String> findInfoColorByCommodityId(String commodityId);

    List<String> findInfoMemoryCapacityBYyCommodityId(String commodityId);

    Double findInfoMinMoneyByCommodityId(String commodityId);

    List<String> findInfoByCommodityIdAndColor(String commodityId,String color);

    List<String> findInfoByCommodityIdAndMemoryCapacity(String commodityId,String memoryCapacity);

    Double searchInfoMoneyByMemoryCapacityAndColor(String commodityId,String memoryCapacity,String color);

    List<Commodity> findCommodityByCategoryAndKind(Integer category,String kind);
}
