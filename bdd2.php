<?php

$NOM = isset($_POST["nom"])? $_POST["nom"] : "";
$Prenom = isset($_POST["prenom"])? $_POST["prenom"] : "";
$Pseudo = isset($_POST["pseudo"])? $_POST["pseudo"] : "";
$Mdp = isset($_POST["mdp"])? $_POST["mdp"] : "";

$database = "amazonece";
$db_handle = mysqli_connect('localhost', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);


if ($_POST["button1"]) 
{
	if ($db_found) 
	{
		$sql = "SELECT * FROM admin";
		if ($Pseudo != "") 
		{
		//on cherche le livre avec les paramètres titre et auteur
			$sql .= " WHERE Pseudo LIKE '%$Pseudo%'";
			if ($Mdp != "") 
			{
				$sql .= " AND Mdp LIKE '%$Mdp%'";
			}
	}
	$result = mysqli_query($db_handle, $sql);

		//regarder s'il y a de résultat
		if (mysqli_num_rows($result) == 0) 
		{
		//le livre recherché n'existe pas
			echo "Admin not found";
		} 
		else 
		{
		//on trouve le livre recherché
			while ($data = mysqli_fetch_assoc($result)) 
			{
				echo "Vous êtes connecté, " . $data['Pseudo'] . "<br>";
				header('Location: http://www.google.com');
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