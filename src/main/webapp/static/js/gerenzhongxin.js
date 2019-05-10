/*function xiu(){
    alert("进来了");
   var userName=$("input[name='userName']").val();
    var brief=$("input[name='brief']").val();
    var sex=$("input[name='sex']").val();
    var birthData=$("input[name='birthData']").val();
    var userId=$("input[name='userId']").val();
 /!*var biaoshu= $('#uploadForm').serialize();    /!*获取表单序列化*!/!*!/
    var attre = new FormData($("#attre")[0]); /!*获取表单文件*!/
    var shuzu={userName,userId,birthData,brief,sex};
    alert("高级"+shuzu);
    $.post("/user/doxiu.html",{shuzu:shuzu,attre:attre},function(count){
            if (count==1){
                alert("修改成功！")
            } else{
                alert("修改失败！")
            }
        },"JSON"
    );

}*/

$(function () {
    $("input[name='jiuuserPwd']").blur(function () {
       var jiuuserPwd=$("input[name='jiuuserPwd']").val();
        $.post("/user/cheakpass.html",{jiuuserPwd:jiuuserPwd},function (restle){
if (reatle) {
    $("#mi").html("原密码错误！");
    $("input[name='userPwd']").readOnly();
}else{
    $("input[name='userPwd']").removeAttr().readOnly();
}

        },"JSON")
    })
})
