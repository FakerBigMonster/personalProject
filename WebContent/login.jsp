<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link href="css/bootstrap-modal.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background: url("img/back.jpg");
}

.top {
	margin-top: 130px;
}
</style>
</head>
<body>
	<div width="100%" class="top"></div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span4">
				<form class="form-horizontal" method="post"
					action="LoginAction_doValidate">
					<div class="control-group">
						<label class="control-label" for="inputUserName">姓名</label>
						<div class="controls">
							<input id="inputUserNameSpan" name="userName" type="text" /><span
								style="font-size: 15px" id="userName"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">密码</label>
						<div class="controls">
							<input id="inputPasswordSpan" name="password" type="password" /><span
								style="font-size: 15px" id="password"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPasswordAgain">重复密码</label>
						<div class="controls">
							<input id="inputPasswordAgainSpan" name="passwordAgain"
								type="password" /><span style="font-size: 15px"
								id="passwordAgain"></span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputPassword">性别</label>
						<div class="controls">
							<input type="radio" name="sex" value="1" /> 男 <input
								type="radio" name="sex" value="0" /> 女
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputPassword">班级</label>
						<div class="controls">
							<select name="grade">
								<option value="高端UI1606">高端UI1606</option>
								<option value="高端UI1605">高端UI1605</option>
								<option value="AP1604A">AP1604A</option>
								<option value="AP1604B">AP1604B</option>
								<option value="高端UI1607">高端UI1607</option>
								<option value="html5-1607">html5-1607</option>
								<option value="java1606">java1606</option>
								<option value="Java1605">Java1605</option>

							</select>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputQQ">QQ</label>
						<div class="controls">
							<input id="inputQQSpan" name="QQ" type="text" /><span
								style="font-size: 15px" id="QQ"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputWeChat">微信</label>
						<div class="controls">
							<input id="inputWeChatSpan" name="weChat" type="text" /><span
								style="font-size: 15px" id="weChat"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputTel">手机号</label>
						<div class="controls">
							<input id="inputTelSpan" name="tel" type="text" /><span
								style="font-size: 15px" id="tel"></span>
						</div>
					</div>

					<div class="control-group">
						<div class="controls">
							<button class="btn" type="submit">注册</button>
							<button class="btn btn-primary btn-lg" data-toggle="modal"
								data-target="#myModal">登录</button>
							<span style="color: red"><s:property value="tip" /></span>
						</div>
					</div>
				</form>
			</div>
			<div class="span8">
				<h2>瑞才班级活动安排系统</h2>
				<p>本系统主要用于安排班级活动，收集活动建议，投票，以及帮助各班级交流和学员自由交友！！！</p>
				<p>
				<h3>网站信息</h3>
				</p>
				<dl>
					<dt>站长信息</dt>
					<dd>本网站由瑞才java 1605班 班长熊昭独立开发完成。</dd>
					<dt>网站详情</dt>
					<dd>于2016年7月15号开始建立</dd>
					<dd>发布时间待定</dd>
					<dt>友情提示：</dt>
					<dd>本网站开发仓促以及本人能力有限，制作比较粗糙，请谅解！</dd>
					<dt>欢迎大家访问本网站</dt>
					<dd>希望大家能在这里努力奋斗完成自己的理想！</dd>
				</dl>
			</div>
		</div>
	</div>

	<!-- modal 模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">
						<center>瑞才活动安排系统登陆框</center>
					</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row-fluid">
							<div class="span12">
								<form class="form-horizontal" method="post"
									action="LoginAction_doLogin">
									<div class="control-group">
										<label class="control-label" for="inputName">姓名</label>
										<div class="controls">
											<input id="inputName" name="userName" type="text" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputPassword">密码</label>
										<div class="controls">
											<input id="inputPassword" name="password" type="password" />
										</div>
									</div>
									<div class="control-group">
										<div class="controls">
											<label class="checkbox"><input type="checkbox" />
												Remember me</label>
											<button type="submit" class="btn">登陆</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /.modal -->
	
	<embed src="tmp/1.mp3" type="mp3" width="0px" height="0px"  ></embed>

	<script type="text/javascript">
		$(document).ready(function() {
			alert("欢迎来到瑞才班级活动系统！请认真完整您的个人信息，立即参与到瑞才班级活动中来吧！！")
		});

		$(function() {
			$("#inputUserNameSpan").bind("focus", function() {
				//alert("test");
				$("#userName").html("<li></li>请输入您的姓名！");
				$("#userName li").addClass("icon-edit icon-black");
			});
		});

		$("#inputUserNameSpan").blur(function() {
			var userName = $(this).val();
			$.post("jsonAjax.action", {
				userName : userName
			}, function(json) {
				alert(json);
				if (json == null) {
					return;
				}
				 var d = eval("("+json+")");
				 //alert(d);
				 $("#userName").html("<li></li>" + d.stu.userName+d.stu.password+d.stu.QQ);
			//	$("#userName").html("<li></li>" + json);
				$("#userName li").addClass("icon-remove icon-black");
				$(this).val("");
			});
		});

		$("#inputUserNameSpan").blur(function() {
			var username = $(this).val();

			if (username.length == 0) {

				$("#userName").html("<li></li>姓名不能为空!");
				$("#userName li").addClass("icon-remove icon-black");
				//$("#tip1").html("用户名不能为空！");
			} else if (username.length > 8) {
				$("#userName").html("<li></li>姓名输入有误！");
				$("#userName li").addClass("icon-remove icon-black");
				$(this).val("");

			} else {
				$("#userName").html("<li></li>");
				$("#userName li").addClass("icon-ok icon-black");
			}
		});

		$("#inputPasswordSpan").blur(function() {
			var username = $(this).val();
			if (username.length == 0) {

				$("#password").html("<li></li>密码不能为空!");
				$("#password li").addClass("icon-remove icon-black");

			} else if (username.length < 4) {
				$("#password").html("<li></li>密码不能小于四位数！");
				$("#password li").addClass("icon-remove icon-black");
				$(this).val("");

			} else {
				$("#password").html("<li></li>");
				$("#password li").addClass("icon-ok icon-black");
			}
		});

		$("#inputPasswordAgainSpan").blur(function() {
			var username = $(this).val();
			var pass = $("#inputPasswordSpan").val();
			if (username.length == 0) {

				$("#passwordAgain").html("<li></li>您还没输入重复密码!");
				$("#passwordAgain li").addClass("icon-remove icon-black");

			} else if (username != pass) {
				$("#passwordAgain").html("<li></li>两次输入的密码不一致！");
				$("#passwordAgain li").addClass("icon-remove icon-black");
				$(this).val("");

			} else {
				$("#passwordAgain").html("<li></li>");
				$("#passwordAgain li").addClass("icon-ok icon-black");
			}
		});

		$("#inputQQSpan").blur(function() {
			var username = $(this).val();

			if (username.length == 0) {

				$("#QQ").html("<li></li>您还没输入QQ!");
				$("#QQ li").addClass("icon-remove icon-black");

			} else if (username.length < 5) {
				$("#QQ").html("<li></li>请确认您的QQ！");
				$("#QQ li").addClass("icon-remove icon-black");
			} else {
				$("#QQ").html("<li></li>");
				$("#QQ li").addClass("icon-ok icon-black");
			}
		});

		$("#inputWeChatSpan").blur(function() {
			var username = $(this).val();

			if (username.length == 0) {

				$("#weChat").html("<li></li>您还没输入微信!");
				$("#weChat li").addClass("icon-remove icon-black");

			} else if (username.length < 5) {
				$("#weChat").html("<li></li>请确认您的微信！");
				$("#weChat li").addClass("icon-remove icon-black");
			} else {
				$("#weChat").html("<li></li>");
				$("#weChat li").addClass("icon-ok icon-black");
			}
		});

		$("#inputTelSpan").mouseout(function() {
			var username = $(this).val();
			var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;

			if (username.length == 0) {

				$("#tel").html("<li></li>您还没输入电话!");
				$("#tel li").addClass("icon-remove icon-black");

			} else if (username.length != 11) {
				$("#tel").html("<li></li>请输入有效的手机号！");
				$("#tel li").addClass("icon-remove icon-black");
				$(this).val("");
			} else {
				$("#tel").html("<li></li>");
				$("#tel li").addClass("icon-ok icon-black");
			}
		});
	</script>



	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-modal.js"></script>
	<script src="js/bootstrap-modalmanager.js"></script>

</body>
</html>