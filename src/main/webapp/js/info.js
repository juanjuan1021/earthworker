/**
 * Created by Jessia on 2016/4/2.
 */

$(document).ready(function(){
    $("input").focus(function(){
        $("input").css("border","0px");
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
    var flag = true;
    $("input[class=info-input]").each(function(i){
        var result = $(this).val();
        if(result ==""){
            $(this).css("border","1px solid red");
            flag = false;
            return false;
        }
    });
    if(flag){
        var file = $("input[type=file]").val();
        if(file ==""){
            $("#imgTd").css("border","1px solid red");
            return false;
        }
        $("form").submit();
    }
}
