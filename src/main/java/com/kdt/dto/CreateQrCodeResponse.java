package com.kdt.dto;

import lombok.Data;

/**
 * Created by csophys on 16/4/6.
 */
@Data
public class CreateQrCodeResponse {
    private CreateQrCode response;

    @Data
    public class CreateQrCode {
        private String qr_url;
        private String qr_id;
    }
}
