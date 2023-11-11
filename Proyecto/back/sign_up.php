<?php

    include '../db/conexion.php';
    
    if (isset($_POST['registro_btn'])) {
        $names = $_POST['names'];
        $lastname = $_POST['lastname'];
        $id_person = $_POST['id_person'];
        $nickname = $_POST['nickname'];
        $email = $_POST['email'];
        $pass = $_POST['pass'];

        $validacion = mysqli_query($conexion, "SELECT * FROM users where id_person = '$id_person'");
        $cant = mysqli_num_rows($validacion);

        if ($cant == 1) {
            header('location:../Front/index_sign_up.html');
        }else{  
            $sql = mysqli_query($conexion, "INSERT INTO usuarios
            (names, lastname, id_person, nickname, email, pass) VALUES
            ('$names', '$lastname', '$id_person', '$nickname', '$email', '$pass')");
            header('location:..Front/index.sign_up.html');
        }
    }
?>