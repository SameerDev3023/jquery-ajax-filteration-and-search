<?php

include 'connection.php';
$first_name = $_POST['FirstName'];
$last_name = $_POST['LastName'];
$email = $_POST['WavyEmail'];
$number = $_POST['WavyPhone'];
$doctor_type = $_POST['DoctorType'];
var_dump($doctor_type);
$sql = "INSERT INTO `doctor`(`first_name`,`last_name`,`email`,`number`,`doctor_type`) 
 VALUES(
    '$first_name',
    '$last_name',
    '$email',
    '$number',
    '$doctor_type'
    ) ";
    $query = mysqli_query($conn,$sql);
    if($query){
        echo'data inserted successfuly';
    }else{
        echo 'not inserted',mysqli_error($conn);
    }

?>