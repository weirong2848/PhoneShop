package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import com.entity.Parts;
import com.entity.Commodity;
import com.entity.ShoppingCart;
import com.service.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("cart")
public class ShoppingCartController {

    @Resource(name = "userService")
    private IUserService userService;

    @Resource(name = "commodityService")
    private ICommodityService commodityService;

    @Resource(name ="partsService")
    private IPartsService partsService;

    @Resource(name = "shoppingCartService")
    private IShoppingCartService shoppingCartService;

    @RequestMapping(path = "upcart")
    public void upcart(@SessionAttribute("username") String username){
        int state =1;
        shoppingCartService.ready(username,state);
    }

    @RequestMapping(path = "addCammodity")
    public void addphoneCart(@SessionAttribute("username") String username,String model, String price1, String color, String memoryCapacity,Integer number){//添加商品到购物车
        String id = null;
        UUID uuid = UUID.randomUUID();
        id = uuid.toString();
        id = id.replace("-", "");
        double price = Double.parseDouble(price1);
        ShoppingCart shoppingCart =  new ShoppingCart();
        List<Commodity> list = commodityService.findPhoneByModel(model);
        for(int i = 0;i<list.size();i++){
            shoppingCart.setGoodsID(list.get(i).getCommodityNumber());
            shoppingCart.setPicture(list.get(i).getPicture());
        }
        shoppingCart.setModel(model);
        shoppingCart.setColor(color);
        shoppingCart.setPrice(price);
        shoppingCart.setMemoryCapacity(memoryCapacity);
        shoppingCart.setUsername(username);
        shoppingCart.setState(0);
        List<ShoppingCart> list1 = shoppingCartService.findCartByModelAndOther(model, username,color,memoryCapacity);

        if(null==list1 || list1.size() ==0 ){
            shoppingCart.setId(id);
            shoppingCart.setNumber(number);
            shoppingCartService.insertShop(shoppingCart);
        }else {
            for (int i=0;i<list1.size();i++){
                int num=list1.get(i).getNumber();
                number = number+num;
            }
            shoppingCart.setNumber(number);
            shoppingCartService.updataShop(color,memoryCapacity,number,model,username);
        }
    }

    @RequestMapping(path = "incart")
    public ModelAndView incart(@SessionAttribute("username") String username) {//进入购物车
        int state = 2;
        shoppingCartService.deleteShopByUsernameAndState(username,state);
        state = 0;
        shoppingCartService.ready(username,state);
        ModelAndView mv = new ModelAndView();
        String name=username;
        List<ShoppingCart> list =shoppingCartService.findShopByUsername(name);
        mv.addObject("list",list);
        mv.setViewName("cart");
        return mv;
    }

    @RequestMapping(path = "updatacart")
    public String updatacart(String model,String color, String memoryCapacity,Integer number,@SessionAttribute("username") String username){//更新购物车商品的数量
        shoppingCartService.updataShop(color,memoryCapacity,number,model,username);
        return "redirect:/cart/incart";
    }

    @RequestMapping(path = "deleteByModel")
    public String deleteCartByUsernameAndModel(@SessionAttribute("username") String username,String model,String color,String memoryCapacity){//删除单个商品
        shoppingCartService.deleteShopByUsernameAndModel(username,model,color,memoryCapacity);
        return "redirect:/cart/incart";
    }

    @RequestMapping(path = "deleteCartByState")
    public void deleteCartByState(@SessionAttribute("username")String username){//删除购物车中选中商品
        int state = 1;
        shoppingCartService.deleteShopByUsernameAndState(username,state);
    }

    @RequestMapping(path = "readyPay")
    public void readyPay(String model,@SessionAttribute("username") String username,String color,String memoryCapacity){
        int state = 0;
        List<ShoppingCart> list = shoppingCartService.findCartByModelAndUsername(model,username,color,memoryCapacity);
        for(int i =0;i<list.size();i++){
            state=list.get(i).getState();
        }
        if(state ==0){
             state = 1;
            shoppingCartService.readyPay(model,username,state,color,memoryCapacity);
        }else {
            state = 0;
            shoppingCartService.readyPay(model,username,state,color,memoryCapacity);
        }
    }

    @RequestMapping(path = "addparts")
    public void addparts(@SessionAttribute("username") String username,String model,String price,Integer number){//添加配件到购物车
        String id = null;
        UUID uuid = UUID.randomUUID();
        id = uuid.toString();
        id = id.replace("-", "");
        double price1 = Double.parseDouble(price);
        ShoppingCart shoppingCart =  new ShoppingCart();
        List<Parts> list = partsService.findPartsByModel(model);
        for(int i = 0;i<list.size();i++){
            shoppingCart.setGoodsID(list.get(i).getId());
            shoppingCart.setPicture(list.get(i).getPicture());
        }
        String color = " ";
        String memoryCapacity = " ";
        shoppingCart.setModel(model);
        shoppingCart.setColor(color);
        shoppingCart.setPrice(price1);
        shoppingCart.setMemoryCapacity(memoryCapacity);
        shoppingCart.setUsername(username);
        shoppingCart.setState(0);
        List<ShoppingCart> list1 = shoppingCartService.findCartByModelAndUsername(model, username,color,memoryCapacity);

        if(null==list1 || list1.size() ==0 ){
            shoppingCart.setId(id);
            shoppingCart.setNumber(number);
            shoppingCartService.insertShop(shoppingCart);
        }else {
            for (int i=0;i<list1.size();i++){
                int num=list1.get(i).getNumber();
                number = number+num;
            }
            shoppingCart.setNumber(number);
            shoppingCartService.updataShop(color,memoryCapacity,number,model,username);
        }
    }

    @RequestMapping("changeCartIfChecked")
    public void changeCartIfChecked(@SessionAttribute("username") String username,String state){//更改当前用户下所有购物车商品的状态
        shoppingCartService.updateShopCartByUsernameAndState(state,username);
    }
}
