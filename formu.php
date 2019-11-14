<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="jquery-3.4.1.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="components/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="components/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="components/bootstrap-calendar/css/calendar.min.css">
<link rel="stylesheet" href="components/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
<div class="container">
  <div class="page-header">
    <h1>Envio De Reporte</h1>      
  </div>

  <?php
  $yeah=$_GET['yes'];
  if ($yeah=='ok') {
    echo '<div class="alert alert-success">PDF creado con exito</div>';
  }
  ?>

  <!--   <div class="alert alert-danger">dick</div>  -->
  <!-- Esto es otro comentario -->
  <!--    <div class="alert alert-success">rick</div>   -->

  <div class="form"> 
    <form class="form-horizontal" enctype="multipart/form-data" action="enviar.php" method="POST">
      <div class="page-header">
       <h1>Para:</h1>      
     </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="description">Email 1:</label>
      <div class="col-sm-10">
        <input class="form-control" id="email1"  name="email1" required="" type="Email"></input>
      </div>
    </div> 
    <div class="form-group">
      <label class="control-label col-sm-2" for="description">Email 2:</label>
      <div class="col-sm-10">
        <input class="form-control" id="email2"  name="email2" type="Email"></input>
      </div>
    </div> 

    <div class="form-group">
      <label class="control-label col-sm-2" for="description">Email 3:</label>
      <div class="col-sm-10">
        <input class="form-control" id="email3"  name="email3" type="Email"></input>
      </div>
    </div> 
    <div class="page-header">
      <h1>Asunto:</h1>     
      <label class="control-label col-sm-2" style="visibility: hidden;" for="description">:</label>
      <div class="col-sm-10">
        <input class="form-control" id="asunto"  required="" name="asunto" type="text"></input>
      </div> 
    </div>
    <div class="page-header">
      <h1>Titulo:</h1>     
      <label class="control-label col-sm-2" style="visibility: hidden;" for="description">:</label>
      <div class="col-sm-10">
        <input class="form-control" id="titulo" required=""  name="titulo" type="text"></input>
      </div> 
    </div>
    <br>
    <br>
    <br>
    <div class="form-group">
      <label class="control-label col-sm-2" for="description">Archivo:</label>
      <div class="col-sm-10">
        <input class="form-control" id="fichero_usuario"  name="fichero_usuario" type="file"></input>
      </div>
    </div> 

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Crear PDF</button>
      </div>

    </div>
  </form>
</div>
</div>