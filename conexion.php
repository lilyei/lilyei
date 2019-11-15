<?php

$usuario = "root"; #usuario

    $password = "";//contraseña

    $servidor = "localhost"; //servidor

    $basededatos = "ivan";//nombre de la base de datos

    //$conexion=mysql_connect($servidor,$usuario,$password,$basededatos);

    $conecta=mysqli_connect("localhost","root","","ivan")or die ("no se a podido conecar");

    ?>