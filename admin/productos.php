
<?php
           include_once("../config.php");

$query="SELECT * FROM producto where codigo=producto.codigo";
$result = mysqli_query($mysqli, $query);
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Mi tienda informatica </title>
</head>

<body>
<h2><a href="/admin/dashboard.php">Volver atr&aacute;s</a></h2>
</br>
<h3> Articulos</h3>

	<?php
    echo "<table width='80%' border=2>";
	echo"<tr bgcolor='aqua'>";
	echo "<td>Nombre</td>";
	echo "<td>Imagen</td>";

	

	echo"</tr>";
	while($res = mysqli_fetch_array($result)) {
		echo "<tr>";
        echo "<td>".$res['nombre']."</td>";  
		echo "<td><img src=\"../".$res['imagen']."\"/></td>";
		
		
		
        
        echo "</tr>";
    }
    echo "</table>";

	mysqli_close($mysqli);
	?>
	</body>
	</html>