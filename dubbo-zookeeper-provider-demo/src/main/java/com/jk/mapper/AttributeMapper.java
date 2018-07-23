package com.jk.mapper;
import com.jk.model.*;
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

    void saveatbrand(@Param("brr") Tbrand brr);

    void deletebrandall(@Param("ids") String ids);

    Tattribute selectattributeupdate(@Param("ids") String ids);

    List<Checkattr> selectcheckedall(@Param("ids") String ids);

    void updateattribute(@Param("attr") Tattribute attr);

    void deletechecked(@Param("attributeid") String attributeid);

    Tbrand selecttbandupdate(@Param("ids") String ids);

    void updateatbrand(@Param("brn") Tbrand brn);

    List<Memberbasic> selectname(@Param("memberbasicphone") String memberbasicphone);

    Memberbasic selectusersphone(@Param("userphone") String userphone);

    void saveMemberbasic(@Param("basic") Memberbasic basic);
}
