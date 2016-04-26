/**
 * Created by Jessia on 2016/4/2.
 */

$(document).ready(function(){
    $("input").focus(function(){
        $(this).css("border","0px");
    });
});

function loadImageFile() {
    oFReader = new FileReader();
    oFReader.onload = function (oFREvent) {
        document.getElementById("preview").src = oFREvent.target.result;
        $("#uploadImg").val(oFREvent.target.result);
    };
    if (document.getElementById("image").files.length === 0) { return; }
    var oFile = document.getElementById("image").files[0];
    oFReader.readAsDataURL(oFile);
}

function checkElementRequired(){
    connectInterest();
    var flag = true;
    $("input[class=info-input]").each(function(i){
        var name = $(this).attr("name");
        if(name != "englishName"){
            var result = $(this).val();
            if(result ==""){
                $(this).css("border","1px solid red");
                flag = false;
                return false;
            }
            if(name == "idNumber"){
                var value = $(this).val();
                if(!validateIdCard(value)){
                    $(this).css("border","1px solid red");
                    $("#notice").css("display","block")
                    $("#notice").text("身份证号码非法！");
                    setTimeout(hideNotice, 3000);
                    flag = false;
                    return false;
                }
            }
        }
        var tel = $(this).attr("type");
        if(tel == "tel"){
            var value = $(this).val();
            if(!validatePhoneNum(value)){
                $(this).css("border","1px solid red");
                $("#notice").css("display","block");
                $("#notice").text("手机号非法！");
                setTimeout(hideNotice, 3000);
                flag = false;
                return false;
            }
        }
        var file = $("#uploadImg").val();
        if(file ==""){
            $("#imgTd").css("border","1px solid red");
            flag = false;
            return false;
        }
    });
    if(flag){
        $("form").submit();
    }
}

function hideNotice(){
    $("#notice").css("display","none");
}

function validatePhoneNum(tel){ //手机号码校验
    var telReg = /^1[0-9]{10}$/;
    var result = telReg.test(tel);
    if(!result){
        return false;
    }
    return true;
}

function validateIdCard(id){ //身份证校验
    var IdReg = /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
    var result = IdReg.test(id);
    if(!result){
        return false;
    }
    return true;
}

function selectInterest(obj){
    var interestClass = $("#"+obj.id+"").attr("class");
    if(interestClass == "interest"){
        $("#"+obj.id+"").attr("class","interest-selected");
    }else{
        $("#"+obj.id+"").attr("class","interest");
    }
}

function connectInterest(){
    var interest = "";
    $(".interest-selected").each(function(){
        if(interest == ""){
            interest = $(this).text();
        }else{
            interest = interest + "," + $(this).text();
        }
    });
    $("#interest").val(interest);
}
