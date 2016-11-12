<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discussion Posts</title>
    </head>
    <body>
        <h1>Discussion Posts</h1>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Comment</th>
            </tr>
            <tr>
                <td>MATT</td>
                <td>First comment to start off the thread.</td>
            </tr>
            <tr>
                <td>${username}</td>
                <td>${comment}</td>
            </tr>
        </table>
    </body>
</html>
