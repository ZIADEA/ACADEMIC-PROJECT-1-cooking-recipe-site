<?php 
$host = "localhost";
$username = "root";
$password = "";
$dbname = "site_recettes_de_cuisine";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    error_log("Erreur de connexion : " . $e->getMessage(), 3, "errors.log");
    echo "Erreur de connexion à la base de données. Veuillez réessayer plus tard.";
    exit();
}
?>
