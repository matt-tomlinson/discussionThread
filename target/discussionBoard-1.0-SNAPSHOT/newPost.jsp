<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Post</title>
    </head>
    <body>
        <h1>New Post</h1>
        <form action="viewPosts" method="POST" id="newPostForm">
            Username: <input type="text" name="username" /><br/>
            Comment: <br/>
            <textarea name="comment" form="newPostForm" rows="4" cols="50" placeholder="Enter text here..."></textarea><br/>
            <input type="submit" value="Post"/><br/><br/>
        </form>
        <span>${error}</span><br/>
        <form action="viewPosts" method="POST">
            <input type="submit" value="View Posts" />
        </form>
    </body>
</html>