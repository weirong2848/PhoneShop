package com.controller;

import com.entity.Commodity;
import com.entity.CommodityInfo;
import com.entity.ShoppingCart;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.ICommodityService;
import com.service.IPartsService;
import com.service.IShoppingCartService;
import com.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

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

    public MainController() {
    }

    @RequestMapping(path = "insertshop")
    public void insertShop(String username, HttpServletRequest http){//进入购物车
        http.getSession().setAttribute("username",username);
        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.getUsername();
        shoppingCartService.insertShop(shoppingCart);
    }

    @RequestMapping(path="moreOrOneBrandMoreCommodity")
    public ModelAndView moreOrOneBrandMoreCommodity(@RequestParam(defaultValue = "1",required = true,value = "pageNo") Integer pageNo,
                                  Integer category,String brand,String kind){//进入更多或单一品牌商品展示页面
        Integer pageSize = 30;
        ModelAndView mv =  new ModelAndView();
        PageHelper.startPage(pageNo,pageSize);
        List<Commodity> list;
        if ((brand == null || "".equals(brand)) && (kind ==null || "".equals(kind))){
            list = commodityService.findCommodityByCategory(category);
        }else{
            if(kind == null || "".equals(kind)){
                list = commodityService.findPhoneByBrand(brand,category);
            }else{
                list = commodityService.findCommodityByCategoryAndKind(3,kind);
            }
        }
        Commodity commodity = new Commodity();
        for(int i= 0;i<list.size();i++){
            commodity = list.get(i);
            commodity.setMinPrice(commodityService.findInfoMinMoneyByCommodityId(commodity.getCommodityId()));
        }
        PageInfo<Commodity> pageInfo = new PageInfo<Commodity>(list);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("category",category);
        mv.addObject("kind",kind);
        mv.addObject("brand",brand);
        mv.setViewName("commodityMore");
        return mv;
    }

    /**
     * 弃用
//     * @param pageNo
//     * @param kind
     * @return
     */
//    @RequestMapping(path="moreOrOneKindMoreParts")
//    public ModelAndView moreOrOneKindMoreParts(
//            @RequestParam(defaultValue = "1",required = true,value = "pageNo") Integer pageNo,String kind){//进入更多或单一配件展示页面
//        Integer pageSize = 30;
//        ModelAndView mv =  new ModelAndView();
//        PageHelper.startPage(pageNo,pageSize);
//        List<Commodity> list;
//        if(kind == null || "".equals(kind)){
//           list = commodityService.findCommodityByCategory(3);
//        }else {
//            list = commodityService.findCommodityByCategoryAndKind(3,kind);
//        }
//        PageInfo<Commodity> pageInfo = new PageInfo<Commodity>(list);
//        mv.addObject("pageInfo",pageInfo);
//        mv.addObject("kind",kind);
//        mv.setViewName("partsmore");
//        return mv;
//    }

    @RequestMapping(path="success")
    public ModelAndView success(){//登录或支付后进入主页
        ModelAndView mv = new ModelAndView();
        List<Integer> phoneNumberList = new ArrayList<>();//手机
        phoneNumberList.add(1101);
        phoneNumberList.add(1201);
        phoneNumberList.add(1301);
        phoneNumberList.add(1401);
        phoneNumberList.add(1501);

        List<Integer> tablePcNumberList = new ArrayList<>();//平板
        tablePcNumberList.add(2101);
        tablePcNumberList.add(2201);
        tablePcNumberList.add(2301);
        tablePcNumberList.add(2401);
        tablePcNumberList.add(2501);

        List<Integer> partsList = new ArrayList<>();//配件
        partsList.add(3101);
        partsList.add(3201);
        partsList.add(3301);
        partsList.add(3401);
        partsList.add(3501);

        Commodity commodity = new Commodity();
        List<Commodity> list1 = commodityService.findPhoneByCategoryAndNumber(1,phoneNumberList);
        for(int i= 0;i<list1.size();i++){
            commodity = list1.get(i);
            commodity.setMinPrice(commodityService.findInfoMinMoneyByCommodityId(commodity.getCommodityId()));
        }
        List<Commodity> list2 = commodityService.findPhoneByCategoryAndNumber(2,tablePcNumberList);
        for(int i= 0;i<list1.size();i++){
            commodity = list2.get(i);
            commodity.setMinPrice(commodityService.findInfoMinMoneyByCommodityId(commodity.getCommodityId()));
        }
        List<Commodity> list3 = commodityService.findPhoneByCategoryAndNumber(3,partsList);
        for(int i= 0;i<list3.size();i++){
            commodity = list3.get(i);
            commodity.setMinPrice(commodityService.findInfoMinMoneyByCommodityId(commodity.getCommodityId()));
        }
        mv.addObject("list1",list1);
        mv.addObject("list2",list2);
        mv.addObject("list3",list3);
        mv.setViewName("success");
        return mv;
    }

    @RequestMapping(path = "inCommodity")
    @ResponseBody
    public ModelAndView inCommodity(String commodityId){//进入单个商品详情
        ModelAndView mv = new ModelAndView();
        if(commodityId != null && !"".equals(commodityId)){
            Commodity commodity = commodityService.findPhoneByCommodityId(commodityId);
            commodity.setMinPrice(commodityService.findInfoMinMoneyByCommodityId(commodityId));
            List<CommodityInfo> infoList  = commodityService.findCommodityInfoByCommodityId(commodityId);
            List<Commodity> list = new ArrayList<Commodity>();
            commodity.setCommodityInfoList(infoList);
            List<String> colorList = commodityService.findInfoColorByCommodityId(commodityId);
            List<String> memoryCapacitList = commodityService.findInfoMemoryCapacityBYyCommodityId(commodityId);
            //处理List里为[null],size()为1情况
            colorList = colorList.parallelStream().filter(Objects::nonNull).collect(Collectors.<String>toList());
            memoryCapacitList = memoryCapacitList.parallelStream().filter(Objects :: nonNull).collect(Collectors.<String>toList());
            list.add(commodity);
            mv.addObject("colorList",colorList);
            mv.addObject("memoryCapacitList",memoryCapacitList);
            mv.addObject("list",list);
            mv.setViewName("commodity");
        }
        return mv;
    }

    /**
     * 弃用
//     * @param commodityId
     * @return
     */
//    @RequestMapping(path = "inparts")
//    public ModelAndView inparts(String commodityId){//进入单个配件详情
//        ModelAndView mv = new ModelAndView();
//        Commodity commodity = commodityService.findPhoneByCommodityId(commodityId);
//        List<Commodity> list = new ArrayList();
//        list.add(commodity);
//        mv.addObject("list",list);
//        mv.setViewName("parts");
//        return mv;
//    }

    @RequestMapping(path = "search")
    public ModelAndView search(@RequestParam(defaultValue = "1",required = true,value = "pageNo") Integer pageNo, String world){//查询的接口
        Integer pageSize = 30;
        ModelAndView mv = new ModelAndView();
        PageHelper.startPage(pageNo,pageSize);
        Commodity commodity = new Commodity();
        List<Commodity> list= commodityService.findSomePhone(world);
        for(int i= 0;i<list.size();i++){
            if(3 == list.get(i).getCategory()){

            }else{
                commodity = list.get(i);
                commodity.setMinPrice(commodityService.findInfoMinMoneyByCommodityId(commodity.getCommodityId()));
            }
        }
        PageInfo<Commodity> pageInfo = new PageInfo<Commodity>(list);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("world",world);
        mv.setViewName("search");
        return mv;
    }

    @RequestMapping(path = "searchInfoByColor")
    @ResponseBody
    public List<String> searchInfoByColor(String commodityId,String color){
        List<String> memoryCapacitList = commodityService.findInfoByCommodityIdAndColor(commodityId,color);
        return memoryCapacitList;
    }

    @RequestMapping(path = "searchInfoByMemoryCapacity")
    @ResponseBody
    public List<String> searchInfoByMemoryCapacity(String commodityId,String memoryCapacity){
        List<String> colorList = commodityService.findInfoByCommodityIdAndMemoryCapacity(commodityId,memoryCapacity);
        return colorList;
    }

    @RequestMapping(path = "searchInfoMoneyByMemoryCapacityAndColor")
    @ResponseBody
    public double searchInfoMoneyByMemoryCapacityAndColor(String commodityId,String memoryCapacity,String color){
      double money = commodityService.searchInfoMoneyByMemoryCapacityAndColor(commodityId,memoryCapacity,color);
      return money;
    }


}
