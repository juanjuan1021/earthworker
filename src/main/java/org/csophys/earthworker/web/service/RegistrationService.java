package org.csophys.earthworker.web.service;

import org.csophys.earthworker.web.entity.Registration;

import java.util.List;

/**
* Created by csophys with template on 2016-3-31.
*/
public interface RegistrationService {

    int insert(Registration entity);

    Registration getById(int id);

    List<Registration> getByField(String fieldName,String fieldValue);

    int updateById(int id, Registration entity);

    int deleteById(int id);
}
