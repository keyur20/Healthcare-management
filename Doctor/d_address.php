<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>d_address</title>
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
    background-image: url(../pic/healthcare-banner.jpg);
    background-size: cover;
}
</style>
<body>
    <h1>Changing Address</h1>
    <?php
    session_start();
    include("connection.php");

    if (isset($_POST['submit4'])) {
        $d_email = $_SESSION['email'];
        $d_id = $_POST['id'];
        $d_address = $_POST['address'];
        $select_d_address_query = "select address from doctor where email='$d_email'";
        $run_d_address_query = mysqli_query($db, $select_d_address_query);

        if (mysqli_num_rows($run_d_address_query) > 0) {
            $check_drow = mysqli_fetch_assoc($run_d_address_query);
            $edit_d_address_query = "update doctor set address='$d_address' where email='$d_email'";
            $edit_run_d_address_query = mysqli_query($db, $edit_d_address_query);

            if (isset($edit_run_d_address_query)) {
                $update_msg = "updated ";
                echo "<script> alert('Are You Sure ? You Want To Change Your Address')</script>";
                echo "<script>window.location='view_doctor_profile.php'</script>";
            } else {
                $error_msg = "not updated";
            }
        } else {
            $error_msg = "user not found";
        }
    }
    ?>
    <ul class="text-center font-weight-bold text-monospace text-dark">
        <form action="d_address.php" method="POST">
            Change address: <input type="text" name="address"><input type="submit" name="submit4" value="save"><br />
            <?php
            if (isset($error_msg)) {
                echo $error_msg;
            }
            if (isset($update_msg)) {
                echo $update_msg;
            }
            ?>
        </form>
    </ul>
    <div class="container">
        <ul class="pager font-weight-bold text-monospace">
            <li class="previous"><a href="doctor_home_page.php">Previous</a></li>
            <li class="next"><a href="d_pswd.php">Next</a></li>
        </ul>
    </div>
    <script src="https://ajax.googleapis.com/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</body>
</html>
