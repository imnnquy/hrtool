<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/jsp/include/head.jsp"%>
<!-- local script -->
<script>
	
	//detect mouse position to display login form
	var wWidth = $(window).width();//window width value, updated everytime window is resized by user
	var wHeight = $(window).height();//window height value, updated everytime window is resized by user
	$(window).resize(function(){
		wWidth = $(window).width();
		wHeight = $(window).height();
	});
	
	$(window).resize();
	var timer = null
	
	window.setTimeout(function(){
		$('#login-panel').animate({'top': '-100px'}, 250);	
	}, 500);

</script>
</head>
<body id="login">
<div class="wrapper" id="login-panel">
	<div class="contentLogin">
    	<h3>Let's get started</h3>
        <p>This will be an amazing experience</p>
        <form action="index.html" class="frmLogin" method="post">
        	<ul>
        		<li><img src="css/image/transparent.png" class="icoLoginUser"/><input type="text" placeholder="Username" id="login-username" autofocus/></li>
                <li><img src="css/image/transparent.png" class="icoLoginPass"/><input type="password" placeholder="Password" id="login-password"/></li>
        	</ul>
            <button class="io-button-highlight medium" id="btn-login"><span>Login</span></button>
            <p><a href="#" title="">Register new account</a></p>
            <p><a href="#" title="">Forget your password?</a> | <a href="#" title="">Help</a></p>
        </form>
    </div>
</div>
</body>
</html>