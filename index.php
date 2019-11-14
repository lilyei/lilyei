<!DOCTYPE html>
<html>
<head>
	<title>Reporte de Actividades</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="formu.css">
<script type="text/javascript" src="jquery-3.4.1.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="components/jquery/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="components/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="components/bootstrap-calendar/css/calendar.min.css">
    <link rel="stylesheet" href="components/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
</head>
<body>
	

	<table align="center" >
  		<th >
  			<div >
  				<div >
  					<h2 align="center">Resultados</h2>
  					<br>
  					<br>
  					<h3>Reporte de Actividades </h3>
  					<form  class="form" name="registro_scrap" id="registro" method="POST" action="generar.php"  >
  						<div class="text-center">
  							<label>Empresa</label>
  							<input  class="input" type="tex" name="empresa" id="empresa" >
  							<label>Solicitud de Trabajo</label>
  							<input  class="input" type="text" name="trabajo" id="trabajo" >
  							<label>Cargo</label>
  							<input  class="input" type="text" name="cargo" id="cargo" >
  							<label>Departamento</label>
  							<input  class="input" type="text" name="depto" id="depto" >
  							<label>Ing. de Control</label>
  							<input  class="input" type="text" name="ing" id="ing" >
  							<br>

  							<label>Actividades Realizadas</label>
  							<div>

  								<textarea id="actividad" name="actividad" class="md-textarea form-control" rows="3" >
  									
  								</textarea>
  							</div>








  							<input type="hidden" name="accion" id="accion" value="confirmar" />
  							<br>
  							<input  type="submit" class="btn btn-primary" value="Generar PDF">


  							
  						</div>
  					</form>
  				</div>
  			</th>
  		</table>

  			</form>
  		</div>

						

</body>
</html>