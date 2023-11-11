<?php

include '../db/conexion.php';

if (isset($_POST['login_btn'])) {
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    

    $consulta = mysqli_query($conexion, "SELECT * FROM users where email = '$email' and pass = '$pass'");
    $exist = mysqli_num_rows($consulta);

    if ($exist == 1) {
        session_start();
        while ($datos = mysqli_fetch_array($consulta)) {
            $_SESSION['nombre'] = $datos['names'];
            $_SESSION['apellido'] = $datos['lastname'];
            $_SESSION['nacimiento'] = $datos['birth'];
            $_SESSION['usuario'] = $datos['id_person'];
            $_SESSION['email'] = $datos['email'];
        }
        header('location:../Front/index_sesion.html');
    }else {
        header('location:../Front/index_login.html');
    }
    
}

?>