package com.shuangfa.mapper.production;

import com.shuangfa.domain.production.Production;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductionMapper {
    /**
     * 查询全部
     */
    List<Production> getAll();

    /**
     * 根据条件查询
     */
    List<Production> search(@Param("cid") Long cid, @Param("pnamedesc") String pnamedesc, @Param("begin") Integer begin, @Param("offset") Integer offset);

    /**
     * 根据条件查询商品总个数
     */
    int getCount(@Param("cid") Long cid, @Param("pnamedesc") String pnamedesc);
}
