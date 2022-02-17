<?php
    if(session_status() !== PHP_SESSION_ACTIVE) session_start();


    include_once("conexion.php");
    
    $genero="SELECT * FROM GENERO";

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
        <form action="catalogo.php">
            <div class="container1">
                    <div class="container2">
                        <div class="center">
                            <h1>Necesitamos tus datos</h1>
                            <div class="form-group">
                                <input type="text" class="form-control" name="nombre" aria-describedby="textHelp" placeholder="Nombre" required>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Correo" required>
                            </div>
                            <div class="form-group">
                            <select name="genero" class="form-select" aria-label="Default select example">
                                <?php 
                                    $resultado = mysqli_query($conn,$genero); 
                                    while($fila=mysqli_fetch_assoc($resultado)){
                                ?>
                                <option value="<?php echo $fila["id_genero"] ?>"><?php echo $fila["nom_genero"] ?></option>
                                <?php } ?>
                            </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-outline-success">Enviar</button>
                            </div>
                        </div>
                    </div>
            </div>
        </form>
    </body>
</html>


