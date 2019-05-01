<?php

$Nom = isset($_POST["nom"])? $_POST["nom"] : "";
$Prenom = isset($_POST["prenom"])? $_POST["prenom"] : "";
$Adresse = isset($_POST["add1"])? $_POST["add1"] : "";
$Adressebis = isset($_POST["add2"])? $_POST["add2"] : "";
$Ville = isset($_POST["ville"])? $_POST["ville"] : "";
$CP = isset($_POST["cp"])? $_POST["cp"] : "";
$Pays = isset($_POST["pays"])? $_POST["pays"] : "";
$Num = isset($_POST["tel"])? $_POST["tel"] : "";

$database = "amazonece";
$db_handle = mysqli_connect('localhost', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);


if ($db_found) 
	{
		$sql = "SELECT * FROM acheteurs";
		if ($Nom != "") 
		{
		//on cherche le vendeur avec les paramètres pseudo et mdp
			$sql .= " WHERE Nom LIKE '%$Nom%'";
			if ($Prenom != "") 
			{
				$sql .= " AND Prenom LIKE '%$Prenom%'";
			}
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
				echo "Adresse1 : " . $data['Adresse'] . "<br>";
				echo "Adresse2 : " . $data['AdresseBIS'] . "<br>";
				echo "Ville : " . $data['Ville'] . "<br>";
				echo "Code Postal : " . $data['CP'] . "<br>";
				echo "Pays : " . $data['Pays'] . "<br>" . "<br>";
				
				//header('Location: http://www.google.com');
			}
		}
	} 
	else 
	{
		echo "Database not found";
	}


mysqli_close($db_handle);

?>
			