<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Impress by www.phpjz.cn</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link href="css/bootstrap-modal.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/reset.css" />
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/main.css" />
<!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="css/main-msie.css" /><![endif]-->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/style.css" />
<link rel="stylesheet" media="print" type="text/css"
	href="css/print.css" />

<style type="text/css">
body {
	background: url("img/back1.jpg");
}
</style>
</head>
<body>
	<div id="main">
		<div id="header">
			<h1 id="logo">
				<a href="http://www.phpjz.cn/"><img src="img/logo2.png" alt="" /></a>
			</h1>
			<hr class="noscreen" />
			<div id="nav">
				<a href="http://www.phpjz.cn/" id="nav-active"></a> <span>|</span> <a
					href="http://www.phpjz.cn/"></a> <span>|</span> <a
					href="http://www.phpjz.cn/"></a> <span>|</span> <a
					href="http://www.phpjz.cn/"></a>
			</div>
		</div>
		<div id="tray">
			<ul>
				<li id="tray-active"><a href="http://www.phpjz.cn/">主页</a></li>
				<li><a id="activity" data-toggle="modal" data-target="">活动安排</a></li>
				<li><a href="">活动投票</a></li>
				<li><a href="">找妹子</a></li>
				<li><a href="">找汉子</a></li>
				<li><a href="">修改个人信息</a></li>
			</ul>
			<div id="search" class="box">
				<form action="http://www.phpjz.cn/" method="get">
					<div class="box">
						<div id="search-input">
							<span class="noscreen">Search:</span> <input type="text"
								size="30" name="" value="Search" />
						</div>
						<div id="search-submit">
							<input type="image" src="design/search-submit.gif" value="OK" />
						</div>
					</div>
				</form>
			</div>
			<hr class="noscreen" />
		</div>
		<div id="col-top"></div>
		<div id="col" class="box">
			<div id="ribbon"></div>
			<div id="col-browser">
				<a href="http://www.phpjz.cn/"><img src="img/pic.png"
					width="255" height="177" alt="" /></a>
			</div>
			<div id="col-text">
				<h2 id="slogan">
					本次活动标题：
					<s:property value="title" />
				</h2>
				<p>
					<strong>本次活动内容：<s:property value="content" /></strong> </br>本次活动地址：
					<s:property value="address" />
					</br>本次活动时间：
					<s:property value="date" />
					</br>活动发布日期：
					<s:property value="releaseDate" />
				</p>
				<p id="btns">
					<div class="control-group">
						<div class="controls">
							<a class="btn btn-lg btn-success" id="ding">
								&nbsp&nbsp&nbsp&nbsp踩( <s:property value="countInterest" />

								)&nbsp&nbsp&nbsp&nbsp
							</a> <a class="btn btn-lg btn-danger" id="cai">
								&nbsp&nbsp&nbsp&nbsp踩( <s:property value="countNotInterest" />

								)&nbsp&nbsp&nbsp&nbsp
							</a>

						</div>
					</div>
				</p>
			</div>
		</div>
		<div id="col-bottom"></div>
		<hr class="noscreen" />
		<div id="cols3-top"></div>

		<div id="cols3-bottom"></div>
		<div id="cols2-top"></div>
		<div id="cols2" class="box">
			<div id="col-left">
				<div class="title">
					<span class="f-right"><a href="" class="ico-rss">刷新</a><a
						href="" class="ico-rss">留言</a></span>
					<h4>自由聊天评论区</h4>
				</div>
				<ul class="ul-list nomb">
					<li><span class="f-right"><a href=""
							class="ico-comment">匿名</a></span> <span class="date">17.07.2016</span> <a
						href="" class="article">好期待这次的班级活动！！！！</a></li>

					<li><span class="f-right"><a href=""
							class="ico-comment">匿名</a></span> <span class="date">17.08.2016</span> <a
						href="" class="article">我只想安安静静的写代码QAQ</a></li>
					<li><span class="f-right"><a href=""
							class="ico-comment">匿名</a></span> <span class="date">17.08.2016</span> <a
						href="" class="article">妹子捏？？</a></li>
					<li><span class="f-right"><a href=""
							class="ico-comment">匿名</a></span> <span class="date">17.08.2016</span> <a
						href="" class="article">老司机来了，大家快上车</a></li>
					<li><span class="f-right"><a href=""
							class="ico-comment">匿名</a></span> <span class="date">17.08.2016</span> <a
						href="" class="article">车有毛用啊！在武汉没船你好意思跑妹子？？</a></li>
				</ul>
			</div>
			<hr class="noscreen" />
			<div id="col-right">
				<h4>
					<span>心灵鸡汤专区</span>
				</h4>
				<div class="box">
					<div class="col-right-img">
						<img src="tmp/65x65.gif" width="65" height="65" alt="" />
					</div>
					<div class="col-right-text">
						<p>世上无难事，只要肯放弃！
							你不努力永远不知道什么叫绝望！你拼命想要做到最好，却还不如别人随便搞搞！明明可以靠脸吃饭，你却偏要靠才华！之就是你和明明的差距！</p>
						<p class="high smaller">
							&ndash; <cite>John Doe, Some Corporation</cite>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div id="cols2-bottom"></div>
		<hr class="noscreen" />
		<div id="footer">
			<p class="f-right">
				<a href="http://www.phpjz.cn/">Free web templates</a> by <a
					href="http://www.phpjz.cn/">www.phpjz.cn</a>
			</p>
			<p>
				Copyright &copy;&nbsp;2016 <strong><a
					href="http://www.phpjz.cn/">熊昭</a></strong>, All Rights Reserved &reg;
			</p>
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
						<center>瑞才活动安排发布</center>
					</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row-fluid">
							<div class="span12">
								<form class="form-horizontal" method="post"
									action="ActivityAction_publish">
									<div class="control-group">
										<label class="control-label" for="inputTitle">活动标题</label>
										<div class="controls">
											<input id="inputTitle" name="title" type="text" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputContent">活动内容</label>
										<div class="controls">
											<input id="inputContent" name="content" type="text" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputAddress">活动地点</label>
										<div class="controls">
											<input id="inputAddress" name="address" type="text" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputDate">活动日期安排</label>
										<div class="controls">
											<input id="inputDate" name="date" type="text" />
										</div>
									</div>
									<div class="control-group">
										<div class="controls">
											<button type="submit" class="btn btn-primary">发布</button>
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
	<!-- /.modal  #myModal -->
	<p id="tip" style="font-size: 1px">
		<s:property value="tip" />
	</p>
	<p id="power" style="font-size: 1px">
		<s:property value="userName" />
	</p>
	<script type="text/javascript">
		$(document).ready(function() {
			var tip = $("#tip").html();
			alert(tip);
			var power = $("#power").html();
			var flag = power.indexOf("admin");
			if (flag>0) {
				$("#activity").attr("data-target", "#myModal");
			}
			
			
			<!--利用ajax实现点赞功能 -->
			$("#ding").click(function(){
				alert("点赞成功！");
				var userName = $(this).val();
				$.post("activityAjax.action", {
					userName : userName
				}, function(json) {
					//alert(json);
					if (json == null) {
						return;
					}
					$("#ding").html("&nbsp&nbsp&nbsp&nbsp踩("+json+")&nbsp&nbsp&nbsp&nbsp");
				});
				$("#ding").addClass("disabled");
				var str=$("#ding").attr("class");
				var	flag2=str.indexOf("disabled");
				if(flag2>0){
					$("#ding").mouseover(function(){
						alert("您点赞次数已耗尽！");
					})
				}
			});
			
			
			$("#cai").click(function(){
				alert("为什么要踩我！我表示不开心！");
				var userName = $(this).val();
				$.post("activityAjaxCai.action", {
					userName : userName
				}, function(json) {
					//alert(json);
					if (json == null) {
						return;
					}
					$("#cai").html("&nbsp&nbsp&nbsp&nbsp踩("+json+")&nbsp&nbsp&nbsp&nbsp");
				});
				$("#cai").addClass("disabled");
				var str=$("#cai").attr("class");
				var	flag2=str.indexOf("disabled");
				if(flag2>0){
					$("#cai").mouseover(function(){
						alert("您点赞次数已耗尽！");
					})
				}
			});
			
			
		});
		
		
		
	</script>



	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-modal.js"></script>
	<script src="js/bootstrap-modalmanager.js"></script>
	<embed src="tmp/1.mp3" type="mp3" width="1px" height="1px"></embed>

</body>
</html>
