<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>user_appointment</title>
</head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>

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

ul {
    list-style-type: none;
}
</style>

<body>
<h1>Appointment</h1>
<?php
include 'connection.php';
include 'translate.php';
?>
<?php
$sql = "SELECT * FROM doctorschedule WHERE bookAvail='Available';";
$result = mysqli_query($db, $sql);
$resultCheck = mysqli_num_rows($result);
if ($resultCheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "Schedule ID: " . $row['scheduleId'];
        echo "Date: " . $row['scheduleDate'];
        echo "Schedule Day: " . $row['scheduleDAY'];
        echo "Start Time: " . $row['startTime'];
        echo "End Time: " . $row['endTime'];
        echo "Available: " . $row['bookAvail'] . "<br>";
    }
}

if (isset($_POST["submit"])) {
    $schedule_id = $_POST['schedule_id'];
    $schedule_date = $_POST['schedule_date'];
    $schedule_day = $_POST['schedule_day'];
    $start_time = $_POST['start_time'];
    $end_time = $_POST['end_time'];
    $booking = $_POST['booking'];

    if (empty($schedule_id)) {
        $error_msg = "Please Enter Id";
    } elseif (!filter_var($schedule_id, FILTER_VALIDATE_INT)) {
        $error_msg = "Please Enter A Valid Id";
    } elseif (empty($schedule_date)) {
        $error_msg = "Please Enter Schedule Date";
    } elseif (empty($start_time)) {
        $error_msg = "Please Enter Start Time";
    } elseif (empty($end_time)) {
        $error_msg = "Please Enter End Time";
    } elseif (empty($booking)) {
        $error_msg = "Please Enter... Yes or No....??";
    } else {
        $u_query = "INSERT INTO schedule (schedule_id, schedule_date, schedule_day, start_time, end_time, booking)     
                    VALUES ('$schedule_id', '$schedule_date', '$schedule_day', '$start_time', '$end_time', '$booking')";
        mysqli_query($db, $u_query);
        $run = $success_msg = "Your appointment time and date are updated";
    }
}
?>

<form action="user_appointment.php" method="POST">
    <ul>
        <li> Schedule ID <br /><br /><input type="text" name="schedule_id"><br /><br /></li>
        <li> Schedule Date <br /><br /><input type="date" name="schedule_date"><br /><br /></li>
        <li> Schedule Day <br /><br />
            <input type="radio" name="schedule_day" value="Sunday">Sunday<br /><br />
            <input type="radio" name="schedule_day" value="Monday">Monday<br /><br />
            <input type="radio" name="schedule_day" value="Tuesday">Tuesday<br /><br />
            <input type="radio" name="schedule_day" value="Wednesday">Wednesday<br /><br />
            <input type="radio" name="schedule_day" value="Thursday">Thursday<br /><br />
            <input type="radio" name="schedule_day" value="Friday">Friday<br /><br />
            <input type="radio" name="schedule_day" value="Saturday">Saturday<br /><br />
        </li>
        <li><i class="material-icons"></i> Start time <br /><br /><input type="time" name="start_time"> <br /><br /></li>
        <li><i class="material-icons"></i> End time <br /><br /><input type="time" name="end_time"> <br /><br /></li>
        <li> Booking: <br /><br />
            <input type="radio" name="booking" value="Available">Yes<br /><br />
            <input type="radio" name="booking" value="Not_Available">No<br /><br />
        </li>
        <br /><br /> <input type="submit" name="submit" value="submit"> <br /><br />
    </ul>
    <?php
    if (isset($error_msg)) {
        echo $error_msg;
    }
    if (isset($success_msg)) {
        echo $success_msg;
    }
    ?>
</form>

<h2><a target="_blank" href="view_user_home_page.php">Back</a></h2>
</body>
</html>
