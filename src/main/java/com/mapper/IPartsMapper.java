package com.mapper;

import com.entity.Parts;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 弃用
 */
@Repository
public interface IPartsMapper {
    @Select("select * from tb_parts")
    List<Parts> findAllParts();

    @Select("select picture,model,price from tb_parts where id in(3101,3201,3301,3401,3501)")
    List<Parts> findPartsByID();

    @Select("select * from tb_parts where model=#{model}")
    List<Parts> findPartsByModel(String model);

    @Select("select * from tb_parts where model like concat('%',#{world},'%')")
    List<Parts> findSomeParts(String world);

    @Select("select * from tb_parts where kind=#{kind}")
    List<Parts> findPartsBykind(String kind);

}
