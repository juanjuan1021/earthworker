package org.csophys.earthworker.web;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.csophys.common.service.util.SpringBaseWithCustomizeRunnerTest;
import org.csophys.earthworker.web.entity.Registration;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.util.List;


public class RegistrationControllerTest extends SpringBaseWithCustomizeRunnerTest {
    public static final String WEIXIN_ID = "csophysnihaonisdsf";

    /*不会产生DB脏数据*/

    @Test
    public void testGetRegistration() throws Exception {
        MockHttpServletResponse response = mockRegistrationAdd();
        Assert.assertTrue(response.getStatus() == 200);
        Assert.assertTrue(!response.getContentAsString().equals(Constant.FAIL));
    }

    private MockHttpServletResponse mockRegistrationAdd() throws Exception {
        MockHttpServletRequestBuilder mockHttpServletRequestBuilder = MockMvcRequestBuilders
                .post("/Registration/add")
                .param("weixinId", WEIXIN_ID)
                .param("payId", "sdfnihasdf")
                .param("totalAmount", "123.12");

        return this.mockMvc.perform(mockHttpServletRequestBuilder).andReturn().getResponse();
    }

    @Test
    public void testGetById() throws Exception {
        MockHttpServletResponse response = mockRegistrationAdd();
        MockHttpServletRequestBuilder mockHttpServletRequestBuilder = MockMvcRequestBuilders.get("/Registration/" + response.getContentAsString());
        String contentAsString = this.mockMvc.perform(mockHttpServletRequestBuilder).andReturn().getResponse().getContentAsString();
        Registration registration = new Gson().fromJson(contentAsString, Registration.class);
        Assert.assertTrue(registration != null);
    }

    @Test
    public void testGetByWeixinId() throws Exception {
        mockRegistrationAdd();
        mockRegistrationAdd();
        MockHttpServletRequestBuilder mockHttpServletRequestBuilder = MockMvcRequestBuilders.get("/Registration/getByWeixinId").param("weixinId", WEIXIN_ID);
        String contentAsString = this.mockMvc.perform(mockHttpServletRequestBuilder).andReturn().getResponse().getContentAsString();
        List<Registration> registrationList = new Gson().fromJson(contentAsString, new TypeToken<List<Registration>>() {
        }.getType());
        Assert.assertTrue(registrationList.size() > 0);
    }

    @Test
    public void testUpdateRegistration() throws Exception {
        MockHttpServletResponse response = mockRegistrationAdd();
        MockHttpServletRequestBuilder mockHttpServletRequestBuilder = MockMvcRequestBuilders
                .post("/Registration/update")
                .param("currentSchool", "上海松江小学")
                .param("id",response.getContentAsString());
        Assert.assertTrue(this.mockMvc.perform(mockHttpServletRequestBuilder).andReturn().getResponse().getContentAsString().equals(Constant.SUCCESS));

    }
}