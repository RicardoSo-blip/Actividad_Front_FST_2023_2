<?php

    $server = "localhost";
    $user = "root";
    $pass = "";
    $db = "todo_sobre_pelis";
    
    $conexion = new mysqli($server, $user, $pass, $db);

    if ($conexion->connect_errno) {
        echo "error de conexion";
        exit();
    }

?>