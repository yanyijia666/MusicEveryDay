$(function(){
	$("#lefttiantian ul li").click(function(){
		$("#lefttiantian li").css({"border-color":" whitesmoke","background-color":"#E9ECEC"});
		
		$(this).css({"border-color":" #FF0000","background-color":"#dbdbdb"});
		/*$(this).siblings().css("border-color"," whitesmoke");*/
	})

})
$(function() {
	$(function () {
		$(".shouc").click(function() {
			var ccc = prompt("请输入歌单名称", "新建歌单");
			alert(ccc);
		})
		$(".xiala1").click(function() {
			if($("#hahha").css("display") == "none") {
				$("#hahha").show(100);
				$(".xiala1").attr("src","/static/img/xia.png")
			} else {
				$("#hahha").hide(100);
				$(".xiala1").attr("src","/static/img/shouqi.png");
			}
		})
		$(".xiala2").click(function() {
			if($("#hahha1").css("display") == "none") {
				$("#hahha1").show(100);
				$(".xiala2").attr("src","/static/img/xia.png")
			} else {
				$("#hahha1").hide(100);
				$(".xiala2").attr("src","/static/img/shouqi.png");
			}
		})
	})



	/*if(){}*/
})