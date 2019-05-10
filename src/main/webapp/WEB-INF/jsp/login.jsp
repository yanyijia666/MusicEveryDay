<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登陆页面</title>
		<link rel="stylesheet" type="text/css" href="/static/css/login.css"/>
	</head>
	<body>
		<div class="login">
			<form action="/user/dologin.html" method="post">
				<table align="center" class="ta">
					<tr>
						<th colspan="3"><h2>登陆/注册</h2></th>
					</tr>
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="userName"  class="tt"/></td>
						<td></td>
					</tr>
					<tr>
						<td>密   &nbsp;  码：</td>
						<td><input type="password" name="userPwd" class="tt"/></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="3"><input type="radio" name="user" checked="checked" id="kk" />用户登陆
						<input type="radio" name="admin" id="kk" />管理登陆</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="3"><input type="submit"  value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陆" id="ll" /></td>
						<td></td>
						<td align="right"></td>
					</tr>
				</table>
				<a href="/user/zhuce1.html">注册</a>
				
			</form>
			
			
			
		</div>
	</body>
</html>
