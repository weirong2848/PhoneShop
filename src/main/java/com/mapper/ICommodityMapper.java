package com.mapper;

import com.entity.Commodity;
import com.entity.CommodityInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICommodityMapper {

   // @Select("select * from tb_commodity")
    List<Commodity> findAllPhone();

  // @Select("select * from tb_commodity where model=#{model}")
    List<Commodity> findPhoneByModel(String model);

   // @Select("select * from tb_commodity where model like concat('%',#{world},'%')")
    List<Commodity> findSomePhone(String world);

//    @Select({"<script>",
//            "select commodityId, picture,model from tb_commodity where category=#{category} and commodityId in ",
//            "<foreach collection=\"list\" item=\"list\" index=\"index\" open=\"(\" separator=\",\" close=\")\">",
//            "#{list}",
//            "</foreach>",
//            "</script>"})
    List<Commodity> findPhoneByCategoryAndNumber(@Param("category")Integer category, @Param("list") List<Integer> list);

//    @Select("select * from tb_commodity where brand=#{brand} and category=#{category}")
    List<Commodity> findPhoneByBrand(@Param("brand")String brand,@Param("category")Integer category);

 //   @Select("select * from tb_commodity where category=#{category}")
    List<Commodity> findCommodityByCategory(Integer category);

   // @Select("select * from tb_commodity where commodityId=#{commodityId}")
    Commodity findPhoneByCommodityId(String commodityId);

  //  @Select("select * from tb_commodityinfo where commodityId=#{commodityId}")
    List<CommodityInfo> findCommodityInfoByCommodityId(String commodityId);

//    @Select("select color from tb_commodityinfo where commodityId=#{commodityId} group by color")
    List<String> findInfoColorByCommodityId(String commodityId);

//    @Select("select memoryCapacity from tb_commodityinfo where commodityId=#{commodityId} group by memoryCapacity")
    List<String> findInfoMemoryCapacityBYyCommodityId(String commodityId);

   // @Select("select min(price) as minMoney from tb_commodityinfo where commodityId=#{commodityId} ")
    Double findInfoMinMoneyByCommodityId(String commodityId);

    //@Select("select memoryCapacity from tb_commodityinfo where commodityId=#{commodityId} and memoryCapacity not in (select memoryCapacity from tb_commodityinfo where commodityId=#{commodityId} and color=#{color}) group by memoryCapacity")
    List<String> findInfoByCommodityIdAndColor(@Param("commodityId")String commodityId,@Param("color") String color);

    //@Select("select color from tb_commodityinfo where commodityId=#{commodityId} and color not in (select color from tb_commodityinfo where commodityId=#{commodityId} and memoryCapacity=#{memoryCapacity}) group by color")
    List<String> findInfoByCommodityIdAndMemoryCapacity(@Param("commodityId")String commodityId,@Param("memoryCapacity") String memoryCapacity);

    //@Select("select price from tb_commodityinfo where commodityId=#{commodityId} and memoryCapacity=#{memoryCapacity} and color=#{color}")
    Double searchInfoMoneyByMemoryCapacityAndColor(@Param("commodityId")String commodityId,@Param("memoryCapacity") String memoryCapacity,@Param("color") String color);

    List<Commodity> findCommodityByCategoryAndKind(@Param("category")Integer category,@Param("kind")String kind);



}
