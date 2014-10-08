<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
	<h2>Book List</h2>
    <table>
        <thead>
            <tr>
                <th>ISBN</th>
                <th>Title</th>
                <th>Author</th>
                <th>Operation</th>
            </tr>
        </thead>
        <tbody>
            <s:iterator value="books">
                <tr>
                    <td><s:property value="isbn" /></td>
                    <td>
                    	<a href='<s:url action="info"><s:param name="isbn" value="isbn" /></s:url>'>
                    		<s:property value="title" />
                    	</a>
                    </td>
                    <td><s:property value="authorid"/></td>
                    <td>
                        <a href='<s:url action="delete"><s:param name="isbn" value="isbn" /></s:url>'>
                            Delete
                        </a>
                    </td>
                </tr>
            </s:iterator>
        </tbody>
    </table>
    <s:form action="getworks" >
    	<s:textfield name="authorid" label="Author" />
    	<s:submit />
    </s:form>
</body>
</html>