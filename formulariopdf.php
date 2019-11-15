  <?php
include("menu.php");
  ?>
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