package com.kdt.api;

import com.google.gson.Gson;
import com.kdt.dto.CreateQrCodeResponse;
import org.csophys.common.service.util.HttpUtil;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

public class KdtApiClient {
	private static final String Version = "1.0";

    private static final String apiEntry = "https://open.koudaitong.com/api/entry?";

    private static final String format = "json";

    private static final String signMethod = "md5";
    
    private static final String DefaultUserAgent = "KdtApiSdk Client v0.1";

    private static String appId = "32fb25eda87fedcded";
    private static String appSecret = "e6c1a1373d28b4e17686d18ffd1851de";

    public static String get(String method, HashMap<String,String> parames) throws Exception{
        String url = apiEntry + getParamStr(method, parames);
        return HttpUtil.get(url);
    }


    public static String getParamStr(String method, HashMap<String, String> parames){
        String str = "";
        try {
            str = URLEncoder.encode(buildParamStr(buildCompleteParams(method, parames)), "UTF-8")
                    .replace("%3A", ":")
                    .replace("%2F", "/")
                    .replace("%26", "&")
                    .replace("%3D", "=")
                    .replace("%3F", "?");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return str;
    }
    
    private static String buildParamStr(HashMap<String, String> param){
        String paramStr = "";
        Object[] keyArray = param.keySet().toArray();
        for(int i = 0; i < keyArray.length; i++){
            String key = (String)keyArray[i];

            if(0 == i){
                paramStr += (key + "=" + param.get(key));
            }
            else{
                paramStr += ("&" + key + "=" + param.get(key));
            }
        }

        return paramStr;
    }


    private static HashMap<String, String> buildCompleteParams(String method, HashMap<String, String> parames) throws Exception{
        HashMap<String, String> commonParams = getCommonParams(method);
        for (String key : parames.keySet()) {
			if(commonParams.containsKey(key)){
				throw new Exception("参数名冲突");
			}
			
			commonParams.put(key, parames.get(key));
		}
        
        commonParams.put(KdtApiProtocol.SIGN_KEY, KdtApiProtocol.sign(appSecret, commonParams));
        return commonParams;
    }

    private static HashMap<String, String> getCommonParams(String method){
       HashMap<String, String> parames = new HashMap<String, String>();
        parames.put(KdtApiProtocol.APP_ID_KEY, appId);
        parames.put(KdtApiProtocol.METHOD_KEY, method);
        parames.put(KdtApiProtocol.TIMESTAMP_KEY, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        parames.put(KdtApiProtocol.FORMAT_KEY, format);
        parames.put(KdtApiProtocol.SIGN_METHOD_KEY, signMethod);
        parames.put(KdtApiProtocol.VERSION_KEY, Version);
        return parames;
    }

    public static CreateQrCodeResponse getCreateQrCodeResponse(String dealName, String price) {
        //创建有赞收款二维码
        String method = "kdt.pay.qrcode.createQrCode";
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("qr_name", dealName);
        params.put("qr_price", price);
        params.put("qr_type", "QR_TYPE_DYNAMIC");
        params.put("qr_source", "OUTSIDE");
        String response = null;
        try {
            response = KdtApiClient.get(method, params);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new Gson().fromJson(response, CreateQrCodeResponse.class);
    }

    public static void main(String[] args) {

        //获取最近的订单列表
/*
        String method = "kdt.trades.qr.get";
        HashMap<String, String> params = new HashMap<String, String>();
*/

        //创建一个二维码
        String method = "kdt.pay.qrcode.createQrCode";
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("qr_name","划水");
        params.put("qr_price","0.01");
        params.put("qr_type","QR_TYPE_DYNAMIC");
        params.put("qr_source","OUTSIDE");

//        params.put("num_iid", "2651514");
        String response = null;
        try {
             response= KdtApiClient.get(method, params);
        } catch (Exception e) {
            e.printStackTrace();
        }

        CreateQrCodeResponse createQrCodeResponse = new Gson().fromJson(response, CreateQrCodeResponse.class);
        System.out.println(createQrCodeResponse);
    }
}
