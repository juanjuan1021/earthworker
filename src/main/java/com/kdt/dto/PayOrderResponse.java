package com.kdt.dto;

import lombok.Data;

import java.util.List;

/**
 * Created by csophys on 16/4/6.
 */
@Data
public class PayOrderResponse {
    private PayOrderGroup response;

    @Data
    public class PayOrderGroup {
        private int total_results;
        private List<PayOrder> qr_trades;

        @Data
        public class PayOrder {
            private String tid;
            private String qr_id;
            private String qr_url;
            private String qr_name;
            private String qr_price;
            private String real_price;
            private String payer_nick;
            private String outer_tid;
            private String status;
            private String pay_type;
            private String book_date;
            private String pay_date;
            private String created_date;
        }
    }
}
