package org.csophys.earthworker.web.service;

import org.csophys.common.service.util.SpringBaseWithCustomizeRunnerTest;
import org.csophys.earthworker.web.entity.Registration;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.BeanUtils;

import javax.annotation.Resource;
import java.util.Date;


public class RegistrationServiceTest extends SpringBaseWithCustomizeRunnerTest {

    @Resource
    RegistrationService service;

    @Test
    public void testGetById() throws Exception {
        int result = insertRegistration();
        Assert.assertTrue(result > 0);
        Assert.assertTrue(service.getById(result) != null);
    }

    private Registration buildRegistration() {
        Registration entity = new Registration();
        //TODO:not null field set
        return entity;
    }

    @Test
    public void insert() throws Exception {
        int id = insertRegistration();
        Assert.assertTrue(id > 0);
    }

    private int insertRegistration() {
        Registration entity = buildRegistration();
        return service.insert(entity);
    }


    @Test
    public void testGetByField() throws Exception {
        int id = insertRegistration();
        Assert.assertTrue(service.getByField("id", String.valueOf(id)).size() > 0);
    }

    @Test
    public void testUpdateById() throws Exception {
        Registration entity = buildRegistration();
        int id = service.insert(entity);
        Registration entityToUpdate = new Registration();
        BeanUtils.copyProperties(entity, entityToUpdate);
        entityToUpdate.setAddTime(new Date());
        //field to update
        service.updateById(id, entityToUpdate);
        Registration newRegistration = service.getById(id);
        Assert.assertTrue(entity.getId() == newRegistration.getId());
    }

    @Test
    public void testDeleteById() throws Exception {
        int id = insertRegistration();
        Assert.assertTrue(service.getById(id) != null);
        int rows = service.deleteById(id);
        Assert.assertTrue(rows > 0);
        Assert.assertTrue(service.getById(id) == null);
    }
}