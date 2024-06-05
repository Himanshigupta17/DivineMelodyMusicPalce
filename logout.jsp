<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOUT</title>
        <script>
            function msg() {
                alert('Thank You for Visiting Us :)..\n\
                You have been Logged Out..');
                window.location.href = "index.jsp";
            }
        </script>
    </head>
    <body>
        <% session.invalidate(); %> 

        <script>msg();</script>

        

    </body>
</html>
