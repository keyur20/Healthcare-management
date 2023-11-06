<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Login</title>
</head>

<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>

<style>
<?php
include 'style1.css';
?>
</style>

<body>
<div class="menu">
    <a href="#" class="brand">
        <img src="pic/icn-nav-healthcare2.png">
    </a>
    <nav>
        <ul>
            <li><a href="Doctor/doctor_login.php">Doctor Login</a></li>
            <li><a href="Users/login.php">Users Login</a></li>
            <li>
                <div style="padding: 9px">
                    <form action="search.php" method="POST">
                        Search Doctor Name: <input type="text" name="f_name" placeholder="Search...">
                        <input type="submit" name="search" value="go">
                        <?php
                        if (isset($error_msg)) {
                            echo $error_msg;
                        }
                        ?>
                    </form>
                </div>
            </li>
        </ul>
    </nav>
</div>

<section></section>
<?php
include 'translate.php';
?>
</body>
</html>
