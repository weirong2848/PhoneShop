package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.entity.User;
import com.service.*;

import javax.annotation.Resource;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Resource(name = "userService")
    private IUserService userService;

    @Resource(name = "commodityService")
    private ICommodityService commodityService;

    @Resource(name ="partsService")
    private IPartsService partsService;

    @Resource(name = "shoppingCartService")
    private IShoppingCartService shoppingCartService;

    @RequestMapping("/dengru")
    @ResponseBody
    public String dengRu(String username, String password, HttpServletRequest http){//登录
        User user = userService.queryUserByName(username);
        if(user == null){
            return "11";
        }else {
            if(password.equals(user.getPassword())){
                http.getSession().setAttribute("username",username);
                if(user.getIsadmin()==0){
                    return "0";
                }else {
                    return "1";
                }
            }else{
                return "12";
            }
        }
    }

    @RequestMapping("/index")
    @ResponseBody
    public boolean index(User user){
        if(userService.queryUserByName(user.getUsername()) == null){//注册
            user.setIsadmin(0);
            user.setGold(10000);
            userService.insertUser(user);
            return true;
        }else {
            return false;
        }
    }
}