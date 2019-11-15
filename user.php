<?php
require_once ("conexion.php"); //conexxion

$login=($_POST['username']);

$senha=($_POST['password']);
 SESSION_START();
$_SESSION['user'] = $login;

$consulta=("SELECT Nombre,Pasw,acces FROM usuarios WHERE Nombre='$login' AND Pasw='$senha'"); //consulda
 $sql=mysqli_query($conecta,$consulta)or die ("no se realizo la consulta");
 while ($alistar=mysqli_fetch_array($sql)) {
echo $alistar['acces'];
$_SESSION['acceso'] = $alistar['acces'];
 }
if($sql){
                $datos=mysqli_num_rows($sql);
                if($datos==1){
                              header('Location: index.php');//            
                }else {
                              
     echo "<script>
                alert('USUARIO O CONTASEÑA INCORRECTO INTENTE DE NUEVO');
                window.location= 'index.php'
    </script>";

                               //regresar a login y mandar mensaje de error
                }
}
?>