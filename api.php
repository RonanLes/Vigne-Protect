<?php
// On se connecte à MySQL
$connexion = mysqli_connect(
	"localhost", // Serveur
	"root", // Utilisateur
	"", // MDP
	"data_capt" // BDD
);

// Vérifier la connexion à la base de données
if (!$connexion)
 {
    die("La connexion à la base de données a échoué: " . mysqli_connect_error());
}

// On exécute la requête SQL correspond à la requête HTTP
$resultat = mysqli_query($connexion, "SELECT * FROM `data` LIMIT 50;" );
// On ferme la connexion à MySQL
mysqli_close($connexion);

if (!$resultat) {
	die("Une erreur est survenue");
}

// On convertit le résultat de la requête en tableau
$data = [];
while($row = $resultat->fetch_assoc())
 {
    $data[] = $row;
}

// On affiche le JSON correspondant au tableau de résultats
echo json_encode($data);
?>