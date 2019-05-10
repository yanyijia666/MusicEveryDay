<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人中心</title>
		<link rel="stylesheet" type="text/css" href="/static/css/gerenzhongxin.css"/>
	</head>
	<body>
		<header>
				<div class="bbb">
		<img src="/static/img/20190505112100.png" />
		<div class="ccc">
		<a href="#">${user.userName}</a>
		<a href="#">通知</a>
		<a href="#">更多</a>
		</div>
		</div>	
		</header>
		<section>
			<div class="xiu">
			<form action="/user/doxiu.html" method="post" enctype="multipart/form-data" id="uploadForm">
				<div class="biaotou">
					<h1>个人设置</h1>	
				</div>
				<table class="danyuan">
					<tr style="display: none">
						<td>ID：</td>
						<td><input type="text" name="userid" class="t" value="${user.userId}"/></td>
						<td></td>
					</tr>
					<tr>
						<td>昵称：</td>
						<td><input type="text" name="userName" class="t" value="${user.userName}"/></td>
						<td></td>
					</tr>

					<tr>
						<td>新密码：</td>
						<td><input type="text" name="userPwd" class="t" value="${user.userPwd}" /></td>
						<td></td>
					</tr>
					<tr>
						<td>介绍：</td>
						<td><textarea cols="50" rows="7" maxlength="300" name="brief" value="${user.brief}">
							请用三百字介绍自己
						</textarea></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>性别：</td>
						<td><input type="radio" checked="checked" name="sex" value="1"/>男
						<input type="radio"  name="sex" value="2"/>女
					<%--	<input type="radio" name="sex" value="保密"/>保密--%>
						</td>
						<td></td>
					</tr>
					<tr>
						<td>生日：</td>
						<td><input type="datetime-local" name="birthData" class="t" value="${user.birthData}"/></td>
						<td></td>
					</tr>
					<tr>
						<td>地区：</td>
						<td><input type="text" name="address" class="t" value="${user.address}"/></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit"<%--onclick="xiu()--%> value="保存" id="an"/></td>
						<td></td>
					</tr>
					<div class="xiuxiang">
						<img src="/static/uploadfiles/${user.userPortrait} "/><input type="file" name="attre" id="attre"  value="修改头像" id="xiutou">
					</div>
				</table>				
			</form>				
			</div>			
		</section>
		<footer></footer>
	<%--<script type="text/javascript" src="/static/js/gerenzhongxin.js"></script>--%>
	</body>
</html>
