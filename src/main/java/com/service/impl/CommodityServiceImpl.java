package com.service.impl;

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
}
