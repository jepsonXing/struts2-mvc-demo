<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Info</title>
</head>
<body>
    <h2>Book Info</h2>
    <s:form>
    	<s:textfield name="book.isbn" label="ISBN" />
   	 	<s:textfield name="book.title" label="Title" />
   		<s:textfield name="book.authorid" label="Author"/>
    	<s:textfield name="book.publisher" label="Publisher" />
   	 	<s:textfield name="book.publishdate" label="PublishDate" />
    	<s:textfield name="book.price" label="Price" />
    </s:form>
    <h2>Author Info</h2>
    <s:form>
    	<s:textfield name="author.authorid" label="Name" />
    	<s:textfield name="author.age" label="Age" />
    	<s:textfield name="author.country" label="Country" />
    </s:form>
    
    <a href='<s:url action=""></s:url>'>Back</a>
</body>
</html>