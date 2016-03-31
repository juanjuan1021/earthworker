package org.csophys.earthworker.web.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.csophys.common.service.dao.SqlMapDao;
import org.csophys.earthworker.web.entity.Registration;

import java.util.List;

/**
* Created by csophys with template on 2016-3-31.
*/
public interface RegistrationDAO extends SqlMapDao{
    int insert(Registration entity);

    @Select("select * from Registration where id = #{id}")
    Registration getById(int id);

    int updateById(@Param("id") int id, @Param("entity") Registration consult);

    @Delete("delete from Registration where id=#{id}")
    int deleteById(int id);

    @Select("select * from Registration where ${fieldName} = #{fieldValue}")
    List<Registration> getByField(@Param("fieldName") String fieldName, @Param("fieldValue") String fieldValue);
}
