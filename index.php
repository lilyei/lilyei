<!DOCTYPE html>
<html>
<head>
	<title>Reporte de Actividades</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script type="text/javascript" src="jquery-3.4.1.min.js" ></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script src="components/jquery/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="components/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="components/bootstrap-calendar/css/calendar.min.css">
  <link rel="stylesheet" href="components/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
</head>
<body>
	
  <div class="container">
   <div class="page-header">
    <h1>Reporte De Actividades</h1>      
  </div>
  <form  class="form-horizontal" name="registro_scrap" id="registro" method="POST" action="generar.php"  >

   <div class="form-group">
    <label class="control-label col-sm-2" for="empresa">Empresa:</label>
    <div class="col-sm-10">
     <input class="form-control" id="empresa"  name="empresa" required="" type="text"></input>
   </div>
 </div>
 <div class="form-group">
  <label class="control-label col-sm-2" for="Solicitud">Solicitud De Trabajo:</label>
  <div class="col-sm-10">
    <input class="form-control" id="trabajo"  name="trabajo" required="" type="text"></input>
  </div>
</div>
<div class="form-group">
  <label class="control-label col-sm-2" for="cargo">Cargo:</label>
  <div class="col-sm-10">
    <input class="form-control" id="cargo"  name="cargo" required="" type="text"></input>
  </div>
</div>
<div class="form-group">
  <label class="control-label col-sm-2" for="depto">Departamento:</label>
  <div class="col-sm-10">
    <input class="form-control" id="depto"  name="depto" required="" type="text"></input>
  </div>
</div>
<div class="form-group">
  <label class="control-label col-sm-2" for="Ing">Ing. De Control:</label>
  <div class="col-sm-10">
    <input class="form-control" id="ing"  name="ing" required="" type="text"></input>
  </div>
</div>
<br>
<div class="form-group">
  <label class="control-label col-sm-2" for="Actividades">Actividades Realizadas:</label>
  <div class="col-sm-10">
  </div>
</div>
<div class="form-group">
  <textarea id="actividad" name="actividad" class="md-textarea form-control" rows="5" >
  </textarea>
</div>
<div class="form-group">
<input type="hidden" name="accion" id="accion" value="confirmar" />
<br>
<input  type="submit" class="btn btn-danger" value="Generar PDF"> <a href="formu.php" class="btn btn-success" >Enviar Por Correo</a>
</div>
</div>
</form>
</div>
</th>

</table>
</form>
</div>

</div>

</body>
</html>