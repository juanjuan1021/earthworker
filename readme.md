# 1 订单报名信息HTTP接口
## 1.1 添加订单报名信息接口
   post("/Registration/add")

   所有可以传递的param如下：

    ``` java
           int id;
           Date addTime;
           Date updateTime
           String weixinId;
           String payId;
           Double totalAmount;
           Double userAmount;
           String dealId;
           String dealName;
           String dealSession;
           String dealCity;
           String childrenName;
           String currentSchool;
           String englishName;
           String iDNumber;
           Date birthDay;
           String sex;
           String nation;
           String img;
           String address;
           String interest;
           String purpose;
           Double health;
           Double height;
           String weight;
           String vision;
           String contactName;
           String appellation;
           String contactPhone;
           String secondContactName;
           String secondAppellation;
           String secondContactPhone;
    ```

## 1.2 订单报名信息更新接口
    .post("/Registration/update")
    传递的参数和新增的时候一致，非null会自动覆盖，必须传递id


## 1.3 订单报名信息获取接口
### 1.3.1 根据报名id获取单个信息
    get("/Registration/{id}"
### 1.3.2 根据weixinId获取全部报名信息
    .get("/Registration/getByWeixinId")



# 2 我要报名接口
/Registration/newRegistration

参数：dealId


# 3 我的报名接口

/Registration/myRegistration

暂时只能在在公众号环境测试
