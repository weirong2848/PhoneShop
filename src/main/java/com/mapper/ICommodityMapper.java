package com.mapper;

import com.entity.Commodity;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICommodityMapper {

    @Select("select * from tb_commodity")
    List<Commodity> findAllPhone();

    @Select("select * from tb_commodity where model=#{model}")
    List<Commodity> findPhoneByModel(String model);

    @Select("select * from tb_commodity where model like concat('%',#{world},'%')")
    List<Commodity> findSomePhone(String world);

    @Select({"<script>",
            "select picture,model,price1 from tb_commodity where category=#{category} and commodityNumber in ",
            "<foreach collection=\"list\" item=\"list\" index=\"index\" open=\"(\" separator=\",\" close=\")\">",
            "#{list}",
            "</foreach>",
            "</script>"})
    List<Commodity> findPhoneByCategoryAndNumber(@Param("category")Integer category, @Param("list") List<Integer> list);

    @Select("select * from tb_commodity where brand=#{brand} and category=#{category}")
    List<Commodity> findPhoneByBrand(@Param("brand")String brand,@Param("category")Integer category);

    @Select("select * from tb_commodity where category=#{category}")
    List<Commodity> findCommodityByCategory(Integer category);
}
