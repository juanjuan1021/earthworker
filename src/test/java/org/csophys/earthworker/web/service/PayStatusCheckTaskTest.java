package org.csophys.earthworker.web.service;

import org.csophys.common.service.util.SpringBaseWithCustomizeRunnerTest;
import org.csophys.earthworker.web.entity.Registration;
import org.junit.Test;

public class PayStatusCheckTaskTest extends SpringBaseWithCustomizeRunnerTest {

    @Test
    public void testCheckPayStatus() throws Exception {
        Registration registration = new Registration();
        registration.setWeixinId("o4rLAwxNceub8asXWjPg--57J27A");
        PayStatusCheckTask.getWaitPayOrders().put("2920933", registration);
        PayStatusCheckTask.getWaitPayOrders().put("2920934", registration);
        Thread.sleep(40000);
    }
}