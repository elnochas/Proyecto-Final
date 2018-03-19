
<!doctype html>
<html lang='en'>
  <head>

    <title>Tienda inform&aacute;tica</title>

    <!-- Bootstrap core CSS -->
    <link href='../css/bootstrap.min.css' rel='stylesheet'>

    <!-- Custom styles for this template -->
    <link href='../css/album.css' rel='stylesheet'>
    <link href='../css/album2.css' rel='stylesheet'>
  </head>

  
  	<body>
  <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <h2><a class="nav-link" href="login.php">Login</a></h2>

   
    </nav>
</br>
      <form method="POST"  action="buscador"> 
<strong>Buscar Productos:</strong> <input type="text" name="T1" size="20"><br><br> 
<input type="submit" value="Buscar" name="buscar"> 
</form> 
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">



    </nav>
    <header>
      <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
          <div class="col-sm-8 col-md-7 py-4">
            </div>
            <div class="col-sm-4 offset-md-1 py-4">
            </div>
          </div>
        </div>
      </div>
     
    </header>

  <main role='main'  >
      <section class='jumbotron text-center' >
        <div class='container'>
          <div class='jumbotron-heading'><font size=30><font color="aqua">Todo en componentes inform&aacute;ticos</font></font></h1>
          <p class='lead text-muted'>Venta de productos inform&aacute;ticos</p>
         
        </div>
      </section>
     



 <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
            <?php
           include_once("../config.php");

$query="SELECT * FROM producto where codigo=producto.codigo";
$result = mysqli_query($mysqli, $query);

 

              while($res = mysqli_fetch_array($result)) {
                echo"<br/>
               <img src=\"../".$res['imagen']."\"width=\"130\" height=\"130\"/>
               
                <div class='col-md-4'>
                    <div class='card mb-4 box-shadow'>
                        <div class='card-body'>
                        <h4><p class='card-text'>".$res['nombre']."</p></h4>
                        <p class='card-text'>".$res['descripcion']."</p>
                            <div class='d-flex justify-content-between align-items-center'>
                            <div class='btn-group'>
                                <a href=\"detalles.php?codigo=".$res['codigo']."\">Consultar detalles del articulo</a>
                                
                            </div>
                              
                            </div>
                        </div>
                    </div>
                </div>";
              }      
              ?>
          </div>
        </div>
      </div>
    </main>
    </footer>
  </body>
</html>