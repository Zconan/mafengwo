<template>
	<div class="box">
		<ul>
            <li>
                <input name="name" type="text" placeholder="你的名号" autocomplete="off">
            </li>
            <li>
                <input name="password" type="password" placeholder="你的密码" autocomplete="off">
            </li>
            <li>
                <input name="smscode" type="text" placeholder="短信验证码" autocomplete="off">
                <div class="getcode"><a href="#">免费获取验证码</a></div>
            </li>
        </ul>
        <div class="btns">
            <button class="btn" type="submit">完成注册</button>
        </div>
	</div>
</template>

<script>
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	.box {
		padding: 0 9px;
	}
	ul {
		border-radius: 5px;
		border: 1px solid #dadada;
	}
	ul li {
		border-bottom: 1px solid #dadada;
		position: relative;
	}
	ul li:last-child {
		border-bottom: 0;
	}
	ul li input {
		height: 43px;
		background: 0;
		border: 0;
		font-size: 16px;
		line-height: 43px;
		width: 100%;
		text-indent: 11px;
	}
	 ul li .getcode {
	 	position: absolute;
	 	bottom: 5px;
	 	right: 5px;
	 }
	  ul li .getcode a {
	  	display: block;
	  	width: 110px;
	  	height: 33px;
	  	line-height: 33px;
	  	border-radius: 4px;
	  	text-align: center;
	  	background: #ff8a00;
	  	font-size: 12px;
	  	color: #fff;
	  	white-space: nowrap;
	  	text-decoration: none;
	  }
	  .btns {
	  	width: 100%;
	  	padding-top: 10px;
	  }
	  .btns button {
	  	display: block;
	  	margin: 10px 0;
	  	width: 100%;
	  	font-size: 18px;
	  	line-height: 34px;
	  	text-align: center;
	  	border-radius: 5px;
	  }
	  .btns button:first-child {
	  	background: #ffba33;
	  	border: 1px solid #d8b185;
	  	color: #fff;
	  }
</style>