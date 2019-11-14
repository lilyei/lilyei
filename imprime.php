
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php
 $nombre_archivo = "logs.txt"; 
 
    if(file_exists($nombre_archivo))
    {
        $mensaje = "sucide in mi head";
    }
 
    else
    {
        $mensaje = "El Archivo $nombre_archivo se ha creado";
    }
 
    if($archivo = fopen($nombre_archivo, "a"))
    {
        if(fwrite($archivo, $mensaje. "\n"))
        {
            echo "Se ha ejecutado correctamente";
            header('Location: formu.php?yes=ok');
end();
        }
        else
        {
            echo "Ha habido un problema al crear el archivo";
        }
 
        fclose($archivo);
    }
 
 ?>
