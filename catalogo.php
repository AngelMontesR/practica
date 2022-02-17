<?php
    include_once("conexion.php");

    session_start();
    
    $_SESSION['email']=$_GET['email'];
    $_SESSION['nombre']=$_GET['nombre'];

    $nombre=$_GET['nombre'];
    $genero=$_GET['genero'];   
    $genero=intval($genero);

    $juguetes="SELECT * FROM JUGUETES WHERE GENERO = $genero";

?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="robots" content="none,noindex,nofollow"  />
        <meta name="author" content="Luis Angel" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="kfg.css" rel="stylesheet"/>
        <title>Práctica</title>
    </head>
    <body> 
    <h1>&nbsp;</h1>
        <div class="container2">
            <h2> <?php echo "Hola ".$nombre." estos son los juguetes recomendados";?></h2>
        </div>
            <div class="container">
                
                <div class="row row-cols-auto">
                    <?php $resultado = mysqli_query($conn,$juguetes);  
                        while($fila=mysqli_fetch_assoc($resultado)){
                        
                    ?>
                    <div class="col">
                    <h1>&nbsp;</h1>
                        <div class="card" style="width: 18rem;">
                            <img src="fondo.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $fila['Nombre_Juguete']; ?></h5>
                                <p class="card-text"><?php echo $fila['Descripcion']; ?></p>
                                <a><?php echo "$".$fila['Costo']; ?></a>
                                <br>
                                <a href="correo.php?id=<?php echo $fila['ID'];?>"><button onclick="alerta()"  type="submit" class="btn btn-success">Enviar</button></a>
                            </div>
                        </div>
                    </div>
                    <br>
                    <?php }?>
                </div>
            </div>
    </body>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="alerts.js"></script>
</html>

