package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.entity.ShoppingCart;
import com.mapper.IShoppingCartMapper;
import com.service.IShoppingCartService;

import java.util.List;

@Service("shoppingCartService")
public class ShoppingCartServiceImpl implements IShoppingCartService {
    @Autowired
    private IShoppingCartMapper shoppingCartMapper;

    @Override
    public List<ShoppingCart> findShopByUsername(String username) {
        return shoppingCartMapper.findShopByUsername(username);
    }

    @Override
    public void insertShop(ShoppingCart shoppingCart) {
        shoppingCartMapper.insertShop(shoppingCart);
    }

    @Override
    public void deleteShopByUsername(String username) {
        shoppingCartMapper.deleteShopByUsername(username);
    }

    @Override
    public void deleteShopByUsernameAndState(String username, Integer state) {
        shoppingCartMapper.deleteShopByUsernameAndState(username,state);
    }

    @Override
    public void deleteShopByUsernameAndModel(String username, String model,String color,String memoryCapacity) {
        shoppingCartMapper.deleteShopByUsernameAndModel(username,model,color,memoryCapacity);
    }

    @Override
    public void updateShopCartByUsernameAndState(String state, String username){
        shoppingCartMapper.updateShopCartByUsernameAndState(state,username);
    }

    @Override
    public void updataShop(String color,String memoryCapacity,Integer number,String model,String username) {
        shoppingCartMapper.updataShop(color,memoryCapacity,number,model,username);
    }

    @Override
    public  List<ShoppingCart> findCartByModelAndUsername(String model, String username,String color,String memoryCapacity) {
        return shoppingCartMapper.findCartByModelAndUsername(model,username,color,memoryCapacity);
    }

    @Override
    public void readyPay(String model, String username, Integer state,String color,String memoryCapacity) {
        shoppingCartMapper.readyPay(model,username,state,color,memoryCapacity);
    }

    @Override
    public void ready(String username, Integer state) {
        shoppingCartMapper.ready(username,state);
    }

    @Override
    public List<ShoppingCart> findShopByUsernameAndState(String username, Integer state) {
        return shoppingCartMapper.findShopByUsernameAndState(username,state);
    }

    @Override
    public List<ShoppingCart> findCartByModelAndOther(String model, String username, String color, String memoryCapacity) {
        return shoppingCartMapper.findCartByModelAndOther(model,username,color,memoryCapacity);
    }

    @Override
    public List<ShoppingCart> findShopByuserandstate(String username) {
        return shoppingCartMapper.findShopByuserandstate(username);
    }
}
