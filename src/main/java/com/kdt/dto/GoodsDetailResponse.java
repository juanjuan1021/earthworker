package com.kdt.dto;

import lombok.Data;

/**
 * Created by zhao juan on 16-4-15.
 */
@Data
public class GoodsDetailResponse {
    private GoodsDetail response;

    @Data
    public class GoodsDetail {
        private Item item;
        @Data
        public class Item{
            private String alias;
            private String title;
            private String num;
            private String sold_num;
            private String price;
        }
    }
}
