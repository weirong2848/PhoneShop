package com.service.impl;

import com.entity.CommodityInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.entity.Commodity;
import com.mapper.ICommodityMapper;
import com.service.ICommodityService;

import java.util.List;

@Service("commodityService")
public class CommodityServiceImpl implements ICommodityService {

    @Autowired
    private ICommodityMapper commodityMapper;

    @Override
    public List<Commodity> findAllPhone() {
        return commodityMapper.findAllPhone();
    }

    @Override
    public List<Commodity> findPhoneByModel(String model) {
        return commodityMapper.findPhoneByModel(model);
    }

    @Override
    public List<Commodity> findSomePhone(String world) {
        return commodityMapper.findSomePhone(world);
    }

    @Override
    public List<Commodity> findPhoneByCategoryAndNumber(Integer category, List<Integer> list) {
        return commodityMapper.findPhoneByCategoryAndNumber(category,list);
    }

    @Override
    public List<Commodity> findPhoneByBrand(String brand,Integer category) {
        return commodityMapper.findPhoneByBrand(brand,category);
    }

    @Override
    public List<Commodity> findCommodityByCategory(Integer category){
        return commodityMapper.findCommodityByCategory(category);
    }

    @Override
    public Commodity findPhoneByCommodityId(String commodityId) {
        return commodityMapper.findPhoneByCommodityId(commodityId);
    }

    @Override
    public List<CommodityInfo> findCommodityInfoByCommodityId(String commodityId) {
        return commodityMapper.findCommodityInfoByCommodityId(commodityId);
    }

    @Override
    public List<String> findInfoColorByCommodityId(String commodityId) {
        return commodityMapper.findInfoColorByCommodityId(commodityId);
    }

    @Override
    public List<String> findInfoMemoryCapacityBYyCommodityId(String commodityId) {
        return commodityMapper.findInfoMemoryCapacityBYyCommodityId(commodityId);
    }

    @Override
    public Double findInfoMinMoneyByCommodityId(String commodityId) {
        return commodityMapper.findInfoMinMoneyByCommodityId(commodityId);
    }

    @Override
    public List<String> findInfoByCommodityIdAndColor(String commodityId, String color) {
        return commodityMapper.findInfoByCommodityIdAndColor(commodityId,color);
    }

    @Override
    public List<String> findInfoByCommodityIdAndMemoryCapacity(String commodityId, String memoryCapacity) {
        return commodityMapper.findInfoByCommodityIdAndMemoryCapacity(commodityId,memoryCapacity);
    }

    @Override
    public Double searchInfoMoneyByMemoryCapacityAndColor(String commodityId, String memoryCapacity, String color) {
        return commodityMapper.searchInfoMoneyByMemoryCapacityAndColor(commodityId,memoryCapacity,color);
    }

    @Override
    public List<Commodity> findCommodityByCategoryAndKind(Integer category, String kind) {
        return commodityMapper.findCommodityByCategoryAndKind(category,kind);
    }
}
