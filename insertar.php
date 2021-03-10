<?php

include("conexion.php");

$nombre_empleado = "Gladis Fernandez";
$correo_electronico = "gfernandez@example.com";
$sexo = "F";
$area = "Ventas";
$boletin = "1";
$descripcion = "na";

mysqli_query($conexion, "INSERT INTO empleados (nombre,email,sexo,area_id,boletin,descripcion) VALUES ('$nombre_empleado','$correo_electronico','$sexo','$area','$boletin','$descripcion',now())"); 


?>