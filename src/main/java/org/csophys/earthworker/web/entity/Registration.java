package org.csophys.earthworker.web.entity;

import lombok.Data;
import org.csophys.common.service.entity.Entity;
import org.csophys.earthworker.web.enums.PayStatusEnum;

import java.util.Date;

/**
 * Created by csophys on 16/3/31.
 */
@Data
public class Registration extends Entity {
    private String weixinId;
    private String payId;
    private Double totalAmount;
    private Double userAmount;
    private String dealId;
    private String dealName;
    private String dealSession;
    private String dealCity;
    private String childrenName;
    private String currentSchool;
    private String englishName;
    private String iDNumber;
    private Date birthDay;
    private String sex;
    private String nation;
    private String img;
    private String address;
    private String interest;
    private String purpose;
    private Double health;
    private Double height;
    private String weight;
    private String vision;
    private String contactName;
    private String appellation;
    private String contactPhone;
    private String secondContactName;
    private String secondAppellation;
    private String secondContactPhone;
    private PayStatusEnum payStatus;
}
