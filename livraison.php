<?php

$Nom = isset($_POST["nom"])? $_POST["nom"] : "";
$Prenom = isset($_POST["prenom"])? $_POST["prenom"] : "";
$Adresse1 = isset($_POST["adresse1"])? $_POST["adresse1"] : "";
$Adresse2 = isset($_POST["adresse2"])? $_POST["adresse2"] : "";
$Ville = isset($_POST["ville"])? $_POST["ville"] : "";
$CP = isset($_POST["cp"])? $_POST["cp"] : "";
$Pays = isset($_POST["pays"])? $_POST["pays"] : "";
$Num = isset($_POST["num"])? $_POST["num"] : "";

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
				echo "Nom : " . $data['Nom'] . "<br>";
				echo "Prénom : " . $data['Prenom'] . "<br>";
				echo "Numéro : " . $data['Num'] . "<br>";
				echo "Adresse1 : " . $data['Adresse1'] . "<br>";
				echo "Adresse2 : " . $data['Adresse2'] . "<br>";
				echo "Ville : " . $data['Ville'] . "<br>";
				echo "Code Postal : " . $data['CP'] . "<br>";
				echo "Pays : " . $data['Pays'] . "<br>";
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
			