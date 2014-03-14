<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@include file="/jsp/include/head.jsp"%>

<sitemesh:write property='head'/>

</head>
<body>
	
	<div class="io-wrapper">
	
		<%@include file="/jsp/include/left.jsp"%>
		
		<div class="io-col-main">
	        
	        <%@include file="/jsp/include/header.jsp"%>
			
			<%@include file="/jsp/include/subheader.jsp"%>
			
	       	<sitemesh:write property='body'/>
        </div><!-- end io-col-main -->
	</div><!-- end io-wrapper -->

	<%@include file="/jsp/include/footer.jsp"%>

</body>
</html>