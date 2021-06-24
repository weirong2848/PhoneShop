package com.controller;

import com.entity.Order;
import com.entity.OrderInfo;
import com.entity.User;
import com.entity.UserAddress;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.service.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("info")
public class UserInfoController {

    @Resource(name = "userService")
    private IUserService userService;

    @Resource(name = "commodityService")
    private ICommodityService commodityService;

    @Resource(name ="partsService")
    private IPartsService partsService;

    @Resource(name = "shoppingCartService")
    private IShoppingCartService shoppingCartService;

    @Resource(name = "userInfoService")
    private IUserAddressService userInfoService;

    @Resource(name = "orderService")
    private IOrderService orderService;

    @RequestMapping(path = "addAddress")
    public String addAddress(String address,String postalcode,String name,String phone,@SessionAttribute("username") String username ){
        String id = null;
        UUID uuid = UUID.randomUUID();
        id = uuid.toString();
        id = id.replace("-", "");
        UserAddress userAddress = new UserAddress();
        userAddress.setId(id);
        userAddress.setAddress(address);
        userAddress.setPostalcode(postalcode);
        userAddress.setName(name);
        userAddress.setPhone(phone);
        userAddress.setUsername(username);
        userInfoService.insertUserAddress(userAddress);
        return "redirect:..//pay/inpay";
    }

    @RequestMapping(path = "addAddress2")
    public String addAddress2(String address,String postalcode,String name,String phone,@SessionAttribute("username") String username ){
        String id = null;
        UUID uuid = UUID.randomUUID();
        id = uuid.toString();
        id = id.replace("-", "");
        UserAddress userAddress = new UserAddress();
        userAddress.setId(id);
        userAddress.setAddress(address);
        userAddress.setPostalcode(postalcode);
        userAddress.setName(name);
        userAddress.setPhone(phone);
        userAddress.setUsername(username);
        userInfoService.insertUserAddress(userAddress);
        return "redirect:/info/inUserInfo";
    }

    @RequestMapping(path = "inUserInfo")
    public ModelAndView inUserInfo(@SessionAttribute("username") String username){
        ModelAndView mv  = new ModelAndView();
        int state = 1;
//        List<Order> list1 = orderService.findOrderByUsernameAndState(username,state);
        List<Order> list1 = orderService.findOrderByUsername(username);
        String orderid =null;
        int totalNumber =0;
        double totalMoney =0;
        List list =  orderService.findorderid(username,state);
        List<OrderInfo> list2 = new ArrayList();
        list2 = orderService.findAllOrderinfo();
        User user = userService.queryUserByName(username);
        List<UserAddress> list3 = userInfoService.findUserAddressByUsername(username);
        mv.addObject("list2",list2);
        mv.addObject("user",user);
        mv.addObject("list1",list1);
        mv.addObject("list3",list3);
        mv.setViewName("customerinfo");
        return mv;
    }

    @RequestMapping(path = "delAddress")
    public String delAddress(String id,@SessionAttribute("username") String username){
        userInfoService.deleteUserAddress(id,username);
        return "redirect:/info/inUserInfo";
    }

    @RequestMapping(path = "addgold")
    public String addgold(String username,Integer gold){
        gold+=10;
        userService.updateUser(username,gold);
        return "redirect:/info/inUserInfo";
    }

    @RequestMapping(path = "rencj")
    public ModelAndView renchoujiang(@SessionAttribute("username") String username){
        ModelAndView mv = new ModelAndView();
        User user = userService.queryUserByName(username);
        mv.addObject("user",user);
        mv.setViewName("choujiang");
        return mv;
    }

    @RequestMapping(path = "updatepassword")
    public String updatepassword(String username,String password){//更新密码
        userService.updatePassword(username,password);
        return "redirect:/info/inUserInfo";
    }

    @RequestMapping(path = "lotteryDraw")
    public String lotteryDraw(@SessionAttribute("username") String username,Integer gold){//对金币进行修改
        User user =  userService.queryUserByName(username);
        gold=user.getGold()+gold;
        userService.updateUser(username,gold);
        return "redirect:/info/rencj";
    }
}
