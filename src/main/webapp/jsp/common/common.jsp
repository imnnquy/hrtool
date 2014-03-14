<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<form method="post">
Skill:
<select name="lang">
<option value="C/C++">.NET</option>
<option value="C#">Java</option>
<option value="Java">C++</option>
<option value="Perl">JavaScript</option>
<option value="Python">HTML</option>
</select>
<select name="lang">
<option value="ngonngu">1.Limited knowledge</option>
<option value="2">2.Limited ability to perform</option>
<option value="3">3.Can perform with assistance</option>
</select>
<br>
Language: 
<select name="lang">
<option value="C/C++">Japanese</option>
<option value="C#">English</option>
<option value="Java">French</option>

</select>
<select name="lang">
<option value="ngonngu">1.Beginner</option>
<option value="2">2.Elementary</option>
<option value="3">3.Intermediate</option>
</select>
<br/>
<input type="submit" value="Submit"><br>
</form>
</html>

<%
String selectedValue=request.getParameter("lang");
out.println("Selected Value is: "+selectedValue);
%>

