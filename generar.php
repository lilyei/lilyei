<?php
require 'fpdf/fpdf.php';

$empresa=$_POST['empresa'];
$trabajo=$_POST['trabajo'];
$cargo=$_POST['cargo'];
$depto =$_POST['depto'];
$ing=$_POST['ing'];
$actividad=$_POST['actividad'];
 $pdf=new FPDF();
 $pdf->AddPage();
 $logo="logosmart.png";
$Fecha=  date("d-m-Y ");


class pdf extends FPDF
{
    
   public function header()
    {  
        if ($this->PageNo() == 1){
        $this->Image('logosmart.png' , 7 ,9, 52 , 38,'png');
        //$this->Image($logo, $this->GetX()+4, $this->GetY()+12, 45);
       // $this->Cell(50,40, $this->Image($logo, $this->GetX()+4, $this->GetY()+12, 45) ,1,"R");

        $this->SetFont('Arial','',15);
        $this->Cell(50);
       

           // $this->Image('images/logo_pb.png',10,8,33);
            $this->Cell(140,10,'Reporte de servicio en Planta',1,0,'C');
            $this->Ln(10);
            $this->Cell(50);
            $this->Cell(140,10,'Control',1,0,'C');
            $this->Ln(10);
            $this->Cell(50);
                $this->SetFont('Arial','',10);
            $this->Cell(35,10,'Vercion',1,0,'C');
            $this->Cell(35,10,'Fecha Emision',1,0,'C');
            $this->Cell(35,10,'Codigo',1,0,'C');
            $this->Cell(35,10,'Pagina',1,0,'C');
                $this->Ln(10);
            $this->Cell(50);

            $this->Cell(35,10,'00',1,0,'C');
            $this->Cell(35,10,'01/03/2019',1,0,'C');
            $this->Cell(35,10,' FO_CTRL_02',1,0,'C');
            $this->Cell(35,10,'1 de 3',1,0,'C');
        }
    }
    public function footer()
    {
        $this->SetY(-15);
        $this->SetX(-15);
        $this->AliasNbPages('tpagina');
        $this->write(5,$this->PageNo().'/tpagina');
    }
}




$pdf=new pdf();
$pdf->AddPage();

 $pdf->SetFont('Arial','B',12);
 $pdf->setY(50);



            // Arial bold 15
            $pdf->SetFont('Arial','B',15);
            $pdf->Ln(20);
            $pdf->Cell(5);
                $pdf->SetFont('Arial','B',12);
            $pdf->Cell(180,10,'FORMATO DE REPORTE SERVICIO A PLANTA',1,0,'C');
             $pdf->Ln(10);
             $pdf->Cell(5);
                   $pdf->SetFont('Arial','',12);
             $pdf->Cell(90,8,'Empresa: '.$empresa,1,0,'L');
             $pdf->Cell(90,8,'Fecha:'.$Fecha,1,0,'l');
                $pdf->Ln(8);
             $pdf->Cell(5);
              $pdf->Cell(180,8,'Solicitud de trabajo: '.$trabajo,1,0,'l');
                  $pdf->Ln(8);
             $pdf->Cell(5);
             $pdf->Cell(90,8,'Cargo: '.$cargo,1,0,'L');
             $pdf->Cell(90,8,'Depto: '.$depto,1,0,'l');
                  $pdf->Ln(8);
             $pdf->Cell(5);
              $pdf->Cell(180,8,'Ingeniero de control: '.$ing,1,0,'l');
                $pdf->Ln(15);
             $pdf->Cell(5);
              $pdf->Cell(185,8,'Actividades Realizadas:',1,0,'C');
              $pdf->Ln(8);
             $pdf->Cell(5);
              $pdf->Multicell(0, 5, utf8_decode($actividad), 1, "L");
          
               $pdf->Output( "Reporte_Planta_".$Fecha.".pdf","D");
                
?>

