<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Conten-Scriptt-Type" content="text/javascript" />
	<meta http-equiv="imagedtoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />

	<title>ItemCreateConfirm画面</title>

	<style type="text/css">
	/* ==========TAG LAYOUT=========== */
		body {
			margin: 0;
			padding: 0;
			line-height: 1.6;
			letter-spacing: 1px;
			font-family: Verdana, Helvetica, sans-serif;
			fot-size: 12px;
			color: #333;
			background: #fff;
		}
		table {
			text-align: center;
			margin: 0 auto;
		}
	/* ==========ecsite LAYOUT============ */
		#top {
			width: 780px;
			margin: 30px auto;
			border: 1px solid #333;
		}
		#header {
			width: 100%;
			height: 80px;
			background-color: black;
		}
		#main {
		width: 100%;
		height: 500px;
		text-align: center;
		}
		#footer {
			width: 100%;
			height: 80px;
			backgoround-color: black;
			clear: both;
		}
		#text-center {
			display: inline-block;
			text-align: center;
		}
		#text-link {
			display: inline-block;
			text-align: right;
		}
	</style>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>ItemCreateConfirm</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="ItemCreateCompleteAction">
					<tr id="box">
						<td>
							<span>アイテム名：</span>
						</td>
						<td>
							<s:property value="itemName" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<span>値段：</span>
						</td>
						<td>
							<s:property value="itemPrice" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<span>在庫数：</span>
						</td>
						<td>
							<s:property value="itemStock" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<s:submit value="登録" />
						</td>
					</tr>
				</s:form>
			</table>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>