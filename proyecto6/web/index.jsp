<%-- 
    Document   : index
    Created on : 31-ene-2019, 13:12:30
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="container well" id="containerLogin">
            
             
            <center><img src="imagen/images.png" alt=""class="img-circle"/></center>
            <br></br>
            <form id="form1">
  <div class="form-group">
    
    <input type="usuario" class="form-control" id="exampleInputEmail1" placeholder="Usuario">
  </div>
  <div class="form-group">
    
    <input type="contraseña" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
  </div>
  
  <div class="checkbox">
    <label>
      <input type="checkbox"> Check me out
    </label>
  </div>
                <center> <button type="submit" class="btn btn-primary">Ingresar</button></center>
</form>
        </div>
    </body>
</html>
