package com.mapper;

import com.entity.ShoppingCart;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IShoppingCartMapper {

    @Select("select * from tb_shopping_cart where username=#{username}")
    List<ShoppingCart> findShopByUsername(String username);

    @Insert("insert into tb_shopping_cart(id,goodsID,model,color,memoryCapacity,number,price,picture,username,state) values(#{id},#{goodsID},#{model},#{color},#{memoryCapacity},#{number},#{price},#{picture},#{username},#{state})")
    void insertShop(ShoppingCart shoppingCart);

    @Delete("delete from tb_shopping_cart where username=#{username}")
    void deleteShopByUsername(String username);

    @Delete("delete from tb_shopping_cart where username=#{username} and state=#{state}")
    void deleteShopByUsernameAndState(@Param("username") String username,@Param("state") int state);

    @Delete("delete from tb_shopping_cart where username=#{username} and model=#{model} and color=#{color} and memoryCapacity=#{memoryCapacity}")
    void deleteShopByUsernameAndModel(@Param("username") String username, @Param("model") String model, @Param("color") String color, @Param("memoryCapacity") String memoryCapacity);

    @Update("update tb_shopping_cart set state =#{state} where username = #{username}")
    void updateShopCartByUsernameAndState(@Param("state") String state,@Param("username") String username);

    @Update("update tb_shopping_cart set number=#{number} where model = #{model} and username = #{username} and color=#{color} and memoryCapacity=#{memoryCapacity}")
    void updataShop(@Param("color") String color, @Param("memoryCapacity") String memoryCapacity, @Param("number") Integer number, @Param("model") String model, @Param("username") String username);

    @Select("select * from tb_shopping_cart where model=#{model} and username=#{username} and color=#{color} and memoryCapacity=#{memoryCapacity}")
    List<ShoppingCart> findCartByModelAndUsername(@Param("model") String model, @Param("username") String username, @Param("color") String color, @Param("memoryCapacity") String memoryCapacity);

    @Select("select * from tb_shopping_cart where username = #{username} and state = #{state}")
    List<ShoppingCart> findShopByUsernameAndState(@Param("username") String username, @Param("state") Integer state);

    @Update("update tb_shopping_cart set state=#{state} where model = #{model} and username = #{username} and color=#{color} and memoryCapacity=#{memoryCapacity}")
    void readyPay(@Param("model") String model, @Param("username") String username, @Param("state") Integer state, @Param("color") String color, @Param("memoryCapacity") String memoryCapacity);

    @Update("update tb_shopping_cart set state=#{state} where username = #{username}")
    void ready(@Param("username") String username, @Param("state") Integer state);

    @Select("select * from tb_shopping_cart where model=#{model} and username=#{username} and color=#{color} and memoryCapacity=#{memoryCapacity}")
    List<ShoppingCart> findCartByModelAndOther(@Param("model") String model, @Param("username") String username, @Param("color") String color, @Param("memoryCapacity") String memoryCapacity);

    @Select("select * from tb_shopping_cart where username = #{username} and state in(1,2);")
    List<ShoppingCart> findShopByuserandstate(String username);
}

