<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $hashpassword=password_hash($password,PASSWORD_BCRYPT);
    $hashdusername=password_hash($username,PASSWORD_BCRYPT);

    
    // Remplacez ces variables avec les informations de votre base de données
    $servername = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "data_capt";

    // Connexion à la base de données
    $conn = new mysqli($servername, $dbusername, $dbpassword, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Requête pour vérifier les identifiants de connexion
    $sql1 = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($sql1);

    if ($result->num_rows == 1) {
        // Connexion réussie, rediriger vers la page de compte utilisateur
        header("Location: Affichage+IHM.html");
        exit();
    } else {
        // Identifiants de connexion incorrects, afficher un message d'erreur
        echo "Identifiants de connexion incorrects.";
    }

    $conn->close();
}
?>
