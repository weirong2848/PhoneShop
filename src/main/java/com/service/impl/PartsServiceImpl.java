package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.entity.Parts;
import com.mapper.IPartsMapper;
import com.service.IPartsService;

import java.util.List;

/**
 * 弃用
 */
@Service("partsService")
public class PartsServiceImpl implements IPartsService {

    @Autowired
    private IPartsMapper partsMapper;

    @Override
    public List<Parts> findAllParts() {
        return partsMapper.findAllParts();
    }

    @Override
    public List<Parts> findPartsByID() {
        return partsMapper.findPartsByID();
    }

    @Override
    public List<Parts> findPartsByModel(String model) {
        return partsMapper.findPartsByModel(model);
    }

    @Override
    public List<Parts> findSomeParts(String world) {
        return partsMapper.findSomeParts(world);
    }

    @Override
    public List<Parts> findPartsBykind(String kind) {
        return partsMapper.findPartsBykind(kind);
    }
}
