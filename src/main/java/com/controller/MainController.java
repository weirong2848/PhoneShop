package com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.IPartsService;
import com.service.ICommodityService;
import com.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.entity.Parts;
import com.entity.Commodity;
import com.entity.ShoppingCart;
import com.service.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main")
public class MainController {

    @Resource(name = "userService")
    private IUserService userService;

    @Resource(name = "commodityService")
    private ICommodityService commodityService;

    @Resource(name ="partsService")
    private IPartsService partsService;

    @Resource(name = "shoppingCartService")
    private IShoppingCartService shoppingCartService;

    @RequestMapping(path = "insertshop")
    public void insertShop(String username, HttpServletRequest http){
        http.getSession().setAttribute("username",username);
        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.getUsername();
        shoppingCartService.insertShop(shoppingCart);
    }

    @RequestMapping(path="moreOrOneBrandMoreCommodity")
    public ModelAndView moreOrOneBrandMoreCommodity(@RequestParam(defaultValue = "1",required = true,value = "pageNo") Integer pageNo,
                                  Integer category,String brand){//进入更多或单一品牌商品展示页面
        Integer pageSize = 30;
        ModelAndView mv =  new ModelAndView();
        PageHelper.startPage(pageNo,pageSize);
        List<Commodity> list;
        if (brand == null || brand.equals("")) {
            list = commodityService.findCommodityByCategory(category);
        }else{
            list = commodityService.findPhoneByBrand(brand,category);
        }
        PageInfo<Commodity> pageInfo = new PageInfo<Commodity>(list);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("category",category);
        mv.addObject("brand",brand);
        mv.setViewName("commodityMore");
        return mv;
    }

    @RequestMapping(path="moreOrOneKindMoreParts")
    public ModelAndView moreOrOneKindMoreParts(
            @RequestParam(defaultValue = "1",required = true,value = "pageNo") Integer pageNo,String kind){//进入更多或单一配件展示页面
        Integer pageSize = 30;
        ModelAndView mv =  new ModelAndView();
        PageHelper.startPage(pageNo,pageSize);
        List<Parts> list;
        if(kind == null || kind.equals("")){
           list = partsService.findAllParts();
        }else{
            list = partsService.findPartsBykind(kind);
        }
        PageInfo<Parts> pageInfo = new PageInfo<Parts>(list);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("kind",kind);
        mv.setViewName("partsmore");
        return mv;
    }

    @RequestMapping(path="success")
    public ModelAndView success(){//登录或支付后进入主页
        ModelAndView mv = new ModelAndView();
        List<Integer> phoneNumberList = new ArrayList<>();
        phoneNumberList.add(1101);
        phoneNumberList.add(1201);
        phoneNumberList.add(1301);
        phoneNumberList.add(1401);
        phoneNumberList.add(1501);

        List<Integer> tablePcNumberList = new ArrayList<>();
        tablePcNumberList.add(2101);
        tablePcNumberList.add(2201);
        tablePcNumberList.add(2301);
        tablePcNumberList.add(2401);
        tablePcNumberList.add(2501);

        List<Commodity> list1 = commodityService.findPhoneByCategoryAndNumber(1,phoneNumberList);
        List<Commodity> list2 = commodityService.findPhoneByCategoryAndNumber(2,tablePcNumberList);
        List<Parts> list3 = partsService.findPartsByID();
        mv.addObject("list1",list1);
        mv.addObject("list2",list2);
        mv.addObject("list3",list3);
        mv.setViewName("success");
        return mv;
    }

    @RequestMapping(path = "inCommodity")
    public ModelAndView inCommodity(String model){//进入单个商品详情
        ModelAndView mv = new ModelAndView();
        List<Commodity> list = commodityService.findPhoneByModel(model);
        mv.addObject("list",list);
        mv.setViewName("commodity");
        return mv;
    }

    @RequestMapping(path = "inparts")
    public ModelAndView inparts(String model){//进入单个配件详情
        ModelAndView mv = new ModelAndView();
        List<Parts> list = partsService.findPartsByModel(model);
        mv.addObject("list",list);
        mv.setViewName("parts");
        return mv;
    }

    @RequestMapping(path = "search")
    public ModelAndView search(String world){//查询的接口
        ModelAndView mv = new ModelAndView();
        List<Commodity> list1 = commodityService.findSomePhone(world);
        List<Parts> list3 = partsService.findSomeParts(world);
        mv.addObject("list1",list1);
        mv.addObject("list3",list3);
        mv.setViewName("search");
        return mv;
    }

}
