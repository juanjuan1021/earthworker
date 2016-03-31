package org.csophys.earthworker.web.service.impl;

import org.csophys.earthworker.web.dao.RegistrationDAO;
import org.csophys.earthworker.web.entity.Registration;
import org.csophys.earthworker.web.service.RegistrationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
* Created by csophys with template on 2016-3-31.
*/
@Service
public class RegistrationServiceImpl implements RegistrationService {
    @Resource
    RegistrationDAO registrationDAO;

    @Override
    public int insert(Registration entity) {
    registrationDAO.insert(entity);
        return entity.getId();
    }

    @Override
    public Registration getById(int id) {
        return registrationDAO.getById(id);
    }

    @Override
    public List<Registration> getByField(String fieldName, String fieldValue) {
        return registrationDAO.getByField(fieldName,fieldValue);
    }

    @Override
    public int updateById(int id, Registration entity) {
        return registrationDAO.updateById(id,entity);
    }

    @Override
    public int deleteById(int id) {
        return registrationDAO.deleteById(id);
    }
}
