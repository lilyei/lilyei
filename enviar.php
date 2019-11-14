<?php
require"PHPmailer/Exception.php";
require"PHPmailer/PHPMailer.php";
require"PHPmailer/SMTP.php";
$nombre=$_FILES['fichero_usuario']['name'];
$guardado=$_FILES['fichero_usuario']['tmp_name'];
$titulo=$_POST['titulo'];
$asunto=$_POST['asunto'];
$email1=$_POST['email1'];
$email2=$_POST['email2'];
$email3=$_POST['email3'];
echo $titulo;
echo '<br></br>';
echo $asunto;
echo '<br></br>';
echo $email1;
echo '<br></br>';
echo $email2;
echo '<br></br>';
echo $email3;
echo '<br></br>';
echo $nombre;
echo '<br></br>';

if(!file_exists('archivos')){
    mkdir('archivos',0777,true);
    if(file_exists('archivos')){
        if(move_uploaded_file($guardado, 'archivos/'.$nombre)){
            echo "Archivo guardado con exito";
        }else{
            echo "Archivo no se pudo guardar";
        }
    }
}else{
    if(move_uploaded_file($guardado, 'archivos/'.$nombre)){
        echo "Archivo guardado con exito";
    }else{
        echo "Archivo no se pudo guardar";
    }
}

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

$mail = new PHPMailer;

$mail->SMTPOptions = array(
    'ssl' => array(
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true
    )
);
$mail->isSMTP();

$mail->SMTPDebug = SMTP::DEBUG_SERVER;

$mail->Host = 'smtp.gmail.com';

$mail->Port = 587;

$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;

$mail->SMTPAuth = true;

$mail->Username = 'javape793@gmail.com';

$mail->Password = 'javape79';

$mail->setFrom('javape793@gmail.com', '');

$mail->addAddress($email1,'');
$mail->addAddress($email2,'');
$mail->addAddress($email3,'');

$mail->Subject = $titulo;

$mail->AddAttachment('archivos/'.$nombre);

$mail->msgHTML($asunto);

$mail->AltBody = 'This is a plain-text message body';

if (!$mail->send()) {
    echo 'Mailer Error: '. $mail->ErrorInfo;
} else {
   
header('Location: index.php');
}
