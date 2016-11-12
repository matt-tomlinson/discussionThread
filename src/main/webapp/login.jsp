<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discussion Login</title>
    </head>
    <body>
        <h1>Login to the discussion board</h1>
        <form action="login" method="POST">
            Username: <input type="text" name="username" /><br/>
            Password: <input type="password" name="password" /><br/><br/>
            <span>${error}</span><br/><span>${info}</span><br/>
            <input type="submit" value="Login"/>
            <span>${loggedIn}</span>
        </form>
    </body>
</html>