<%-- 
    Document   : FileUpload
    Created on : Aug 2, 2015, 6:50:01 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="upload" enctype="multipart/form-data" method="POST">
            <input type="file" name="file1"><br>
            <input type="Submit" value="Upload File"><br>
        </form>
    </body>
</html>
