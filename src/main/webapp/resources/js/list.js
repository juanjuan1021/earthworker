/**
 * Created by Jessia on 2015/10/18.
 */
$(document).ready(function(){
    $(".list-img").each(function(index){
        var imgName = index + 1;
        $(this).attr("src","../images/list-"+imgName+".jpg");
    });

    $("#list-img").load(function(){
        var imgHeight = this.height;
        var imgWidth = this.width;
        $(".mask").each(function(i){
            var currentTop = 0;
            var currentLeft = 0;
            $(this).css("height",imgHeight);
            $(this).css("width",imgWidth);
            $(".list").each(function(j){
                if(i == j){
                    currentTop = $(this).offset().top;
                    currentLeft = $(this).offset().left;
                    return false;
                }
            });
            $(this).css("top",currentTop);
            $(this).css("left",currentLeft);
        });
    });

});