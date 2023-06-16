<?php


$conn = new mysqli('localhost','sameerdev2','arshifa786@','wavy_tech');

if($conn->connect_error){
    echo'connection not done'.$conn->connect_error;
}

?>