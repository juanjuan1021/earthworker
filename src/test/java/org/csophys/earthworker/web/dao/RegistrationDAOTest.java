package org.csophys.earthworker.web.dao;
import org.csophys.common.service.util.SpringBaseWithCustomizeRunnerTest;
import org.csophys.earthworker.web.entity.Registration;
import org.junit.Assert;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.Date;

/**
* Created by csophys on with template on 2016-3-31.
*/
public class RegistrationDAOTest extends SpringBaseWithCustomizeRunnerTest {
    public static final int TEST_ID = -1;
    @Resource
    RegistrationDAO registrationDAO;

    @Test
    public void get() {
        Registration e = insertEntity(TEST_ID);
        Assert.assertTrue(registrationDAO.getById(e.getId()) != null);
    }

    @Test
    public void getByField()  {
        Registration entity = insertEntity(TEST_ID);
        Assert.assertTrue(registrationDAO.getByField("id", String.valueOf(entity.getId())).size() > 0);
    }


    @Test
    public void insert() {
        insertEntity(TEST_ID);
    }

    @Test
    public void delete() {
        Assert.assertTrue(registrationDAO.deleteById(insertEntity(TEST_ID).getId()) > 0);
    }

    @Test
    public void update() {
        Registration e = new Registration();
        e.setAddTime(new Date());
        //TODO set something
        e.setId(insertEntity(TEST_ID).getId());
        Assert.assertTrue(registrationDAO.updateById(e.getId(),e) > 0);
    }

    private Registration insertEntity(int id) {
        Registration e = new Registration();
        e.setId(id);
        //TODO set something
        Assert.assertTrue(registrationDAO.insert(e) == 1);
        return e;
    }
}