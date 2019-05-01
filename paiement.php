<?php

$Carte = isset($_POST["carte"])? $_POST["carte"] : "";
$NumCarte = isset($_POST["numcarte"])? $_POST["numcarte"] : "";
$NomCarte = isset($_POST["nomcarte"])? $_POST["nomcarte"] : "";
$DateExpi = isset($_POST["datexpi"])? $_POST["datexpi"] : "";
$CodeSecu = isset($_POST["secu"])? $_POST["secu"] : "";

$database = "amazonece";
$db_handle = mysqli_connect('localhost', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);


if ($db_found) 
	{
		$sql = "SELECT * FROM acheteurs";
		
	}
	$result = mysqli_query($db_handle, $sql);

		//regarder s'il y a de résultat
		if (mysqli_num_rows($result) == 0) 
		{
		//l'acheteur recherché n'existe pas
			echo "Acheteur not found";
		} 
		else 
		{
		//on trouve l'acheteur recherché
			while ($data = mysqli_fetch_assoc($result)) 
			{
				echo "Type de carte : " . $data['Carte'] . "<br>";
				echo "Numéro de la carte : " . $data['NumCarte'] . "<br>";
				echo "Nom de la carte : " . $data['NomCarteo'] . "<br>";
				echo "Date d'expiration : " . $data['DateExpi'] . "<br>";
				echo "Code de sécurité : " . $data['CodeSecu'] . "<br>";
				//header('Location: http://www.google.com');
			}
		}
	} 
	else 
	{
		echo "Database not found";
	}
}

mysqli_close($db_handle);

?>
			