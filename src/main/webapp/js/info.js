/**
 * Created by Jessia on 2016/4/2.
 */

$(document).ready(function(){

});

function loadImageFile() {
    oFReader = new FileReader();
    oFReader.onload = function (oFREvent) {
        document.getElementById("preview").src = oFREvent.target.result;
    };
    if (document.getElementById("image").files.length === 0) { return; }
    var oFile = document.getElementById("image").files[0];
    oFReader.readAsDataURL(oFile);
}
