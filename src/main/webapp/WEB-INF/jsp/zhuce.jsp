<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
<title>注册页面</title>
	<link rel="stylesheet" href="/static/css/register.css">
</head>

<body>
<section id="register">
	
	<h1 class="hr_1">新用户注册</h1>
	<form action="/user/doadd.html" method="post" name="myform" class="biao">
		<dl>
			<dt>用户名：</dt>
			<dd><input id="user" type="text" name="userName" /><%--<div id="user_prompt">用户名由英文字母和数字组成的4-16位字符，以字母开头</div>--%></dd>
		</dl>
		<dl>
			<dt>密码：</dt>
			<dd><input id="pwd" type="password" name="userPwd" /><div id="pwd_prompt">密码由英文字母和数字组成的4-10位字符</div></dd>
		</dl>
		<dl>
			<dt>确认密码：</dt>
			<dd><input id="repwd" type="password" name="okuserPwd"/><div id="repwd_prompt"></div></dd>
		</dl>

		<dl>
			<dt>手机号码：</dt>
			<dd><input id="mobile" type="text" name="phone"/><div id="mobile_prompt"></div></dd>
		</dl>
		<dl>
			<dt>生日：</dt>
			<dd><input id="birth" type="text" name="birthData"/><div id="birth_prompt"></div></dd>
		</dl>
		<dl>
			<dt>所在地区：</dt>
			<dd><input type="text"  name="address"/></dd>
		</dl>
		<dl>
			<dt>&nbsp;</dt>
			<dd><input name="" type="image" src="/static/img/register.jpg" class="btn" /></dd>
		</dl>
		
  </form>
</section>
<script src="/static/js/jquery-1.12.4.js"></script>
<script>
	$(document).ready(function() {
		/*/!*用户名验证*!/
		$("#user").blur(function () {
			var user = $(this).val();
			var reg = /^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
			if (reg.test(user) == false) {
				$("#user_prompt").html("用户名不正确");
				return false;
			}
			$("#user_prompt").html("");
			return true;
		})*/

		/*密码验证*/
		$("#pwd").blur(function () {
			var pwd = $(this).val();
			var reg = /^[a-zA-Z0-9]{4,10}$/;
			if (reg.test(pwd) == false) {
				$("#pwd_prompt").html("密码不能含有非法字符，长度在4-10之间");
				return false;
			}
			$("#pwd_prompt").html("");
			return true;
		})
		$("#repwd").blur(function () {
			var repwd = $("#repwd").val();
			var pwd = $("#pwd").val();
			if (pwd != repwd) {
				$("#repwd_prompt").html("两次输入的密码不一致");
				return false;
			}
			$("#repwd_prompt").html("");
			return true;
		})

		/*验证手机号码*/
		$("#mobile").blur(function () {
			var mobile = $(this).val();
			var regMobile = /^1\d{10}$/;
			if (regMobile.test(mobile) == false) {
				$("#mobile_prompt").html("手机号码不正确，请重新输入");
				return false;
			}
			$("#mobile_prompt").html("");
			return true;
		})
		/*生日验证*/
		$("#birth").blur(function () {
			var birth = $(this).val();
			var reg =/^\d{4}-\d{2}-\d{2}$/;
			if (reg.test(birth) == false) {
				$("#birth_prompt").html("生日格式不正确，例如1980-05-12");
				return false;
			}
			$("#birth_prompt").html("");
			return true;
		})

	})
</script>
</body>
</html>

