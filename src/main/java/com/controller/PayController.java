package com.controller;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.entity.*;
import com.service.*;
import com.util.AlipayConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("pay")
public class PayController {

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

    private String orderid;

    @RequestMapping(path = "topay")
    public String topay(){
        return "redirect:/pay/inpay";
    }

    @RequestMapping(path = "inpay")
    public ModelAndView inPay(@SessionAttribute("username") String username){
        ModelAndView mv = new ModelAndView();
        int state =1;
        int totalNumber = 0;
        int totalMoney = 0;
        List<ShoppingCart> list1 = new ArrayList<>();
//        list1 = shoppingCartService.findShopByuserandstate(username);
        list1 =shoppingCartService.findShopByUsernameAndState(username,state);
        if(list1.isEmpty()){
            state =2;
            list1 =shoppingCartService.findShopByUsernameAndState(username,state);
        }
//        state =2;
//        list1 =shoppingCartService.findShopByUsernameAndState(username,state);
        for(int i=0;i<list1.size();i++){
            totalNumber+=list1.get(i).getNumber();
            totalMoney+=list1.get(i).getPrice()*list1.get(i).getNumber();
        }
        List<UserAddress> list2 = userInfoService.findUserAddressByUsername(username);
        mv.addObject("list1",list1);
        mv.addObject("list2",list2);
        mv.addObject("totalNumber",totalNumber);
        mv.addObject("totalMoney",totalMoney);
        mv.setViewName("pay");
        return mv;
    }

    @RequestMapping(path = "payMoney",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String payMoney(@SessionAttribute("username") String username,String name,String address,String phone,String totalnumber,String totalmoney){//生成订单
        double money = Double.parseDouble(totalmoney);
        int number = Integer.parseInt(totalnumber);
        int state = 0;

        String orderid = null;
        UUID uuid = UUID.randomUUID();
        orderid = uuid.toString();
        orderid = orderid.replace("-", "");
        int num = orderid.hashCode();
        num = num < 0 ? -num : num;
        orderid = String.valueOf(num);
        long l = System.currentTimeMillis();
        Order order = new Order();
        order.setOrderid(orderid);
        order.setUsername(username);
        order.setName(name);
        order.setPhone(phone);
        order.setAddress(address);
        order.setState(state);
        order.setTotalmoney(money);
        order.setTotalnumber(number);
        orderService.insertOrder(order);
        state =1;
        List<ShoppingCart> list =shoppingCartService.findShopByUsernameAndState(username,state);
        OrderInfo orderInfo = new OrderInfo();
        for(int i=0;i<list.size();i++){
            orderInfo.setOrderid(orderid);
            orderInfo.setGoodsID(list.get(i).getGoodsID());
            orderInfo.setModel(list.get(i).getModel());
            orderInfo.setColor(list.get(i).getColor());
            orderInfo.setMemoryCapacity(list.get(i).getMemoryCapacity());
            orderInfo.setNumber(list.get(i).getNumber());
            orderInfo.setPrice(list.get(i).getPrice());
            orderInfo.setPicture(list.get(i).getPicture());
            orderService.insertOrderInfo(orderInfo);
        }
        state =2;
        List<ShoppingCart> list1 =shoppingCartService.findShopByUsernameAndState(username,state);
        for(int i=0;i<list1.size();i++){
            orderInfo.setOrderid(orderid);
            orderInfo.setGoodsID(list1.get(i).getGoodsID());
            orderInfo.setModel(list1.get(i).getModel());
            orderInfo.setColor(list1.get(i).getColor());
            orderInfo.setMemoryCapacity(list1.get(i).getMemoryCapacity());
            orderInfo.setNumber(list1.get(i).getNumber());
            orderInfo.setPrice(list1.get(i).getPrice());
            orderInfo.setPicture(list1.get(i).getPicture());
            orderService.insertOrderInfo(orderInfo);
        }

        List<OrderInfo> orderList = orderService.findOrderInfoByOrderid(orderid);
        String message = "";
        for (int i = 0;i< orderList.size();i++){
            message += orderList.get(i).getModel()+" ";
        }

        state = 1;
        shoppingCartService.deleteShopByUsernameAndState(username,state);
        state = 2;
        shoppingCartService.deleteShopByUsernameAndState(username,state);

        this.orderid = orderid;

        return toAlipayMessage(orderid,money,message);
//        return "redirect:/pay/inPayInfo";
    }

    @RequestMapping("inAlipay")
    @ResponseBody
    public ModelAndView inAlipay(){//跳转阿里支付页面
        ModelAndView mv = new ModelAndView();
        mv.setViewName("alipay");
        return mv;
    }

    @RequestMapping("payReturn")
    public String payReturn(@SessionAttribute("username") String username){//支付后的回调方法
        int state = 1;
        orderService.updateOrderByOrderId(username,state,orderid);
        Order order = orderService.findOrderByOrderid(orderid);
        User user = userService.queryUserByName(username);
        int gold = (int)order.getTotalmoney()+user.getGold();
        userService.updateUser(username,gold);
        return "redirect:/main/success";
    }

    public String toAlipayMessage(String orderid,double money,String message){//Alipay的请求信息
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
        try {
            alipayRequest.setBizContent("{\"out_trade_no\":\""+ orderid+"\","
                    + "\"total_amount\":\""+ money +"\","
                    + "\"subject\":\""+ message +"\","
                    + "\"body\":\""+ " " +"\","
                    + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
            //请求
            String result;
            result = alipayClient.pageExecute(alipayRequest).getBody();
            return result;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping(path = "toPayMoney",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String toPayMoney(String orderid){//未支付的订单重新支付接口
        this.orderid = orderid;
        Order order = orderService.findOrderByOrderid(orderid);
        double money = order.getTotalmoney();
        List<OrderInfo> orderList = orderService.findOrderInfoByOrderid(orderid);
        String message = "";
        for (int i = 0;i< orderList.size();i++){
            message += orderList.get(i).getModel()+" ";
        }
        return toAlipayMessage(orderid,money,message);
    }

    @RequestMapping("changeOrderStete")
    public String changeOrderStete(@SessionAttribute("username") String username,String orderid,Integer state){//改变订单的状态
        orderService.updateOrderByOrderId(username,state,orderid);
        return "redirect:/info/inUserInfo";
    }

    @RequestMapping("changeOrderIsdel")
    public String changeOrderIsdel(String orderid,String isdel){//改变该订单是否显示
        orderService.updateOrderIsdel(orderid,isdel);
        return "redirect:/info/inUserInfo";
    }

    @RequestMapping(path = "inPayInfo")
    public ModelAndView inPayInfo(@SessionAttribute("username") String username){
        ModelAndView mv = new ModelAndView();
        User user =userService.queryUserByName(username);
        int allGolds = user.getGold();
        int state =1;
        int payGolds = 0;
        List<ShoppingCart> list =shoppingCartService.findShopByUsernameAndState(username,state);
        for (int i =0;i<list.size();i++){
            payGolds+=list.get(i).getNumber()*list.get(i).getPrice();
        }
        state =2;
        List<ShoppingCart> list1 =shoppingCartService.findShopByUsernameAndState(username,state);
        for (int i =0;i<list1.size();i++){
            int a=list1.get(i).getNumber();
            double b=list1.get(i).getPrice();
            payGolds = (int) (a*b);
        }
        mv.addObject("allGolds",allGolds);
        mv.addObject("payGolds",payGolds);
        mv.setViewName("payinfo");
        return mv;
    }

    @RequestMapping(path = "payGold")
    public String payGold(String username,Integer gold){
        userService.updateUser(username,gold);
        int state =0;
        orderService.updateOrder(username,state);
        state =1;
        shoppingCartService.deleteShopByUsernameAndState(username,state);
        orderService.updateOrder(username,state);
        state = 2;
        shoppingCartService.deleteShopByUsernameAndState(username,state);
        return "redirect:/main/success";
    }

    @RequestMapping(path = "notPayGold")
    public String notPayGold(String username){
        int state = 0;
        String orderid = null;
        List<Order> list = orderService.findOrderByUsernameAndState(username,state);
        for (int i =0;i<list.size();i++){
            orderid=list.get(i).getOrderid();
            orderService.deleteOrderInfoByOrderid(orderid);
        }
        orderService.deleteOrderByUsernameAndState(username,state);
        state =2;
        shoppingCartService.deleteShopByUsernameAndState(username,state);
        return "redirect:/main/success";
    }

    @RequestMapping(path = "getReadPayCommodity")
    public String getReadPayCommodity(@SessionAttribute("username") String username,String model, String price1, String color, String memoryCapacity,Integer number){//立即购买接口
        String id = null;
        UUID uuid = UUID.randomUUID();
        id = uuid.toString();
        id = id.replace("-", "");
        int state=2;
        shoppingCartService.deleteShopByUsernameAndState(username,state);
        double price = Double.parseDouble(price1);
        ShoppingCart shoppingCart =  new ShoppingCart();
        List<Commodity> list = commodityService.findPhoneByModel(model);
        for(int i = 0;i<list.size();i++){
            shoppingCart.setGoodsID(list.get(i).getCommodityNumber());
            shoppingCart.setPicture(list.get(i).getPicture());
        }
        shoppingCart.setId(id);
        shoppingCart.setModel(model);
        shoppingCart.setColor(color);
        shoppingCart.setPrice(price);
        shoppingCart.setMemoryCapacity(memoryCapacity);
        shoppingCart.setUsername(username);
        shoppingCart.setState(2);
        shoppingCart.setNumber(number);
        shoppingCartService.insertShop(shoppingCart);
        return "redirect:/pay/getinpay";
    }

    @RequestMapping(path = "getinpay")
    public ModelAndView getinpay(@SessionAttribute("username") String username){
        ModelAndView mv = new ModelAndView();
        int state =2;
        int totalNumber = 0;
        int totalMoney = 0;
        List<ShoppingCart> list1 =shoppingCartService.findShopByUsernameAndState(username,state);
        for(int i=0;i<list1.size();i++){
            totalNumber+=list1.get(i).getNumber();
            totalMoney+=list1.get(i).getPrice()*list1.get(i).getNumber();
        }
        List<UserAddress> list2 = userInfoService.findUserAddressByUsername(username);
        mv.addObject("list1",list1);
        mv.addObject("list2",list2);
        mv.addObject("totalNumber",totalNumber);
        mv.addObject("totalMoney",totalMoney);
        mv.setViewName("pay");
        return mv;
    }
}
