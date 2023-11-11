<?php
$host = "localhost";
$username = "root";
$password = "";

try{
    $conn=new PDO("mysql:host=$host; dbname=store", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully!";
}
catch(exception $e){
    echo "connection failed". $e->get_Message();
}
?>