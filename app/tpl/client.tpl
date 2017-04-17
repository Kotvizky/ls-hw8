<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        td {
            border-bottom: solid 1px #000;
        }

        fieldset{
            width: 400px;
            margin: 20px;
        }
    </style>
</head>
<body>
<!--
    <a href="/code">Get vk code</a><br>
    <a href="/token">Get vk token</a><br>
    <a href="/vk">Post vk</a>

-->
<p> { message } </p>
    <form method="post" enctype="multipart/form-data">
        <fieldset>
            <legend>VK Post!</legend>
            <p>
                <label for="postText">Text</label>
                <input type="text" id="postText" value="New post!">
            </p>
            <p>
                <label for="postFile">File</label>
                <input type="file" name="postFile" class="form-control" id="userFile" accept="image/jpeg">
            </p>
            <button type="submit" class="btn btn-default">Send</button>
        </fieldset>
    </form>

    <fieldset>
        <legend>API form</legend>
        <label for="id">Id(если пусто, то все)</label>
        <input id="id" type="number" placeholder="id">
        <input type="submit" id = "submit">
    </fieldset>
    <table id = 'table' >

        <thead>
        </thead>

        <tbody >

        </tbody>
    </table>
<script src="/assets/jquery-3.1.1.min.js"></script>
<script src="/assets/main.js"></script>
</body>
</html>