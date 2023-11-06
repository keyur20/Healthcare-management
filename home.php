<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Home</title>
</head>

<style>
h1 {
    font-size: 50px;
    padding-left: 590px;
    padding-top: 60px;
}

img {
    float: left;
    width: 77px;
}

body {
    margin: 0;
    padding: 0;
    font-family: "Bahnschrift Light", "Bernard MT Condensed", "Berlin Sans FB Demi", "Bell MT";
    width: 100%;
    height: 100vh;
    background-image: url(pic/healthcare-banner.jpg);
    background-size: cover;
}
</style>

<body background="pic/healthcare-banner.jpg">
    <div>
        <a href="#" class="brand">
            <img src="pic/icn-nav-healthcare2.png">
        </a>
        <h1>Home</h1>
        <p>Write a paragraph.
            <a target="_blank" href="login.php?filename=login">Register</a> now.
        </p>
        <h2>
            <a target="_blank" href="index.php?filename=index">Back</a>
        </h2>
    </div>

    <?php
    include 'translate.php';
    ?>
</body>
</html>
