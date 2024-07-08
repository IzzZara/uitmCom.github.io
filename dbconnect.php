<?php
/* php& mysqldb connection file */
$user = "root"; //mysqlusername
$pass = ""; //mysqlpassword
$host = "localhost:3308"; //server name or ipaddress
$dbname= "uitmtee4";

$connect = mysqli_connect($host,$user,$pass,$dbname);

/*if(isset($connect)) 
    echo("Connection established");  
  //connection is established
else
  echo("Unable to connect to the database");*/
?>
