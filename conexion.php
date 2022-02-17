<?php

$sname= "localhost";
$unmae= "root";
$password = "";

$db_name = "juguetes";

$conn = mysqli_connect($sname, $unmae, $password, $db_name);

if (!$conn) {
	echo "Connection fallida!";
}else{
    // echo "Conexion exitosa";
}