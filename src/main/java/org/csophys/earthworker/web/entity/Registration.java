package org.csophys.earthworker.web.entity;

import lombok.Data;
import org.csophys.common.service.entity.Entity;
import org.csophys.earthworker.web.enums.PayStatusEnum;

import java.io.File;
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
    private String winterOrSummer;
    private String englishName;
    private String iDNumber;
    private String birthDay;
    private String sex;
    private String nation;
    private String img;
    private String address;
    private String interest;
    private String purpose;
    private String health;
    private String height;
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
