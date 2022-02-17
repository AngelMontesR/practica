<?php
    include_once("conexion.php");
    session_start();
    $id_juguete= $_GET['id'];
    $nombre=$_SESSION['nombre'];

    $juguetes="SELECT * FROM JUGUETES WHERE ID = $id_juguete";
    


    $to = $_SESSION['email'];
    $subject = "Jugueteria";
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

    $resultado = mysqli_query($conn,$juguetes);  
    while($fila=mysqli_fetch_assoc($resultado)){

    $message = "
    
    <html>
        <head>
            <title></title>
        </head>
        <body>
            <h1>"."Hola ".$nombre."</h1>
            <br>
            <h2>Información del juguete: </h2>
            <p>"."Juguete: ".$fila['Nombre_Juguete']."</p>
            <p>"."Costo: ".$fila['Costo']."</p>
            <p>"."Descripción: ".$fila['Descripcion']."</p>
        </body>
    </html>";
    
    }

    mail($to, $subject, $message, $headers);

    

    header("Location: index.php");


?>