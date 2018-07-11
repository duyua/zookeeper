package com.jk.mapper;

import com.jk.model.Checkattr;
import com.jk.model.Tattribute;
import com.jk.model.Tbrand;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AttributeMapper {
    List<Tattribute> selectattributeshow();

    List<Tclass> selecttclass();

    void saveattribute(@Param("attr") Tattribute attr);

    List<Checkattr> selectchecked(@Param("attributeid") String attributeid);

    void savecheckedattr(@Param("checkattr") Checkattr checkattr);

    void deleteall(@Param("ids") String ids);

    void deleteallcheck(@Param("ids") String ids);

    List<Tbrand> selectbrandshow();

    void saveatbrand(@Param("brr")Tbrand brr);
}
