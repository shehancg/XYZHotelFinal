
function closeform(){
    document.getElementById("bnform_cf").style.display = "none";
}
function openform(){
    document.getElementById("bnform_cf").style.display = "block";
}
function enablesp(){
    document.getElementById("form_lg").style.display="none";
    document.getElementById("form_ca").style.display="block";
    var btn_ca = document.getElementById("sp_btn_mh");
    var col_btn_ca = document.getElementById("sp_btn_col_mh");
    var btn_lg = document.getElementById("lg_btn_mh");
    var col_btn_lg = document.getElementById("lg_btn_col_mh");
    btn_ca.classList.add("sp_btn_mh");
    col_btn_ca.classList.add("sp_btn_col_mh");
    btn_lg.classList.remove("lg_btn_mh");
    col_btn_lg.classList.remove("lg_btn_col_mh");
}
function enablelg(){
    document.getElementById("form_ca").style.display="none";
    document.getElementById("form_lg").style.display="block";
    var btn_ca = document.getElementById("sp_btn_mh");
    var col_btn_ca = document.getElementById("sp_btn_col_mh");
    var btn_lg = document.getElementById("lg_btn_mh");
    var col_btn_lg = document.getElementById("lg_btn_col_mh");
    btn_ca.classList.remove("sp_btn_mh");
    col_btn_ca.classList.remove("sp_btn_col_mh");
    btn_lg.classList.add("lg_btn_mh");
    col_btn_lg.classList.add("lg_btn_col_mh");

}
var id;
function plus(id){
    if(document.getElementById(id).value<10){
        document.getElementById(id).value ++;
    }
}
function minus(id){
    if(document.getElementById(id).value > 0){
        document.getElementById(id).value --;
    }
}


