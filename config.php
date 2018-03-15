<?php
define("DB_HOST","localhost");
define("DB_NAME","tienda");
define("DB_USER","wp_user");
define("DB_PASSWORD","wp_password");

// Usuarios de la base de datos tienda

// define("DB_USER","root");
// define("DB_PASSWORD","root");

// define("DB_USER","tienda_user");
// define("DB_PASSWORD","tienda_user");

$mysqli = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

?>