/**
 * Created by Jessia on 2015/10/18.
 */
$(document).ready(function(){
    var imgWidth = $(window).width()/3;
    $("#enter-img").attr("width",imgWidth);
    $("#title-td").attr("width",$(window).width()-imgWidth);
    $("#apply").click(function(){
        $(".float-box").css("display","block");
        $(".mask").css("display","block");
        $(".detail-box").css("position","fixed");
    });
    $(".mask").click(function(){
        $(".float-box").css("display","none");
        $(".mask").css("display","none");
        $(".detail-box").css("position","relative");
    });
});

function selectTime(obj){
    $(".course-session").each(function(){
        $(this).css("color","#1A1A1A");
        $(this).css("border-color","grey");
    });
    $("#"+obj.id+"").css("color","#3E89D2");
    $("#"+obj.id+"").css("border-color","#3E89D2");
    var dealSession = $("#"+obj.id+"").text();
    $("#dealSession").attr("value",dealSession);
}
function selectCity(obj){
    $(".course-city").each(function(){
        $(this).css("color","#1A1A1A");
        $(this).css("border-color","grey");
    });
    $("#"+obj.id+"").css("color","#3E89D2");
    $("#"+obj.id+"").css("border-color","#3E89D2");
    var dealCity = $("#"+obj.id+"").text();
    $("#dealCity").attr("value",dealCity);
}
