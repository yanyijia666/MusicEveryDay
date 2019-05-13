function del(likeId,obj) {
   if (confirm("确定删除吗？")) {
       $.post("/mylike/droup.html",{likeId:likeId},function (count){
           if (count==1) {
               alert("删除成功");
               $(obj).parent().parent().remove();
           }else{
               alert("删除失败");
           }
       },"JSON")
   }
}