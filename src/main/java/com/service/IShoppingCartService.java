package com.service;

import com.entity.ShoppingCart;

import java.util.List;

public interface IShoppingCartService {

    List<ShoppingCart> findShopByUsername(String username);

    void insertShop(ShoppingCart shoppingCart);

    void deleteShopByUsername(String username);

    void deleteShopByUsernameAndState(String username, Integer state);

    void deleteShopByUsernameAndModel(String username, String model, String color, String memoryCapacity);

    void updateShopCartByUsernameAndState(String state, String username);

    void updataShop(String color, String memoryCapacity, Integer number, String model, String username);

    List<ShoppingCart> findCartByModelAndUsername(String model, String username, String color, String memoryCapacity);

    void readyPay(String model, String username, Integer state, String color, String memoryCapacity);

    void ready(String username, Integer state);

    List<ShoppingCart> findShopByUsernameAndState(String username, Integer state);

    List<ShoppingCart> findCartByModelAndOther(String model, String username, String color, String memoryCapacity);

    List<ShoppingCart> findShopByuserandstate(String username);
}
