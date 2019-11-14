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
<h1>Creacion de reporte</h1>      
</div>

<!--   <div class="alert alert-danger">dick</div>  -->
<!-- Esto es otro comentario -->
<!--    <div class="alert alert-success">rick</div>   -->

<div class="form"> 
<form class="form-horizontal" enctype="multipart/form-data" action="imprime.php" method="post">



<div class="form-group">
  <label class="control-label col-sm-2" for="">Asunto Email:</label>
  <div class="col-sm-10">
      <input type="text" class="form-control" id="mailsubject" required="" placeholder="Ingrese Asunto Email" name="mailsubject" >
  </div>
</div>

<div class="form-group">
  <label class="control-label col-sm-2" for="firstname">Nombres:</label>
  <div class="col-sm-10">
      <input type="text" class="form-control" id="firstname" placeholder="Ingrese Nombres" name="firstname" >
  </div>
</div>

<div class="form-group">
  <label class="control-label col-sm-2" for="lastname">Apellidos:</label>
  <div class="col-sm-10">
      <input type="text" class="form-control" id="lastname" placeholder="Ingrese Apellidos" name="lastname" >
  </div>
</div> 


<div class="form-group">
  <label class="control-label col-sm-2" for="description">Descripcion:</label>
  <div class="col-sm-10">
      <textarea placeholder="Ingrese Descripcion" class="form-control" id="description"  name="description" style=" height: 268px;"></textarea>
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
