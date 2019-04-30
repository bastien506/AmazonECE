<?php

//$NOM = isset($_POST["nom"])? $_POST["nom"] : "";
//$Prenom = isset($_POST["prenom"])? $_POST["prenom"] : "";

$Login = isset($_POST["mail"])? $_POST["mail"] : "";
$Mdp = isset($_POST["psw"])? $_POST["psw"] : "";

$database = "amazonece";
$db_handle = mysqli_connect('localhost', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);

if ($_POST["button1"]) 
{
	if ($db_found) 
	{
		$sql = "SELECT * FROM acheteurs";
		if ($Login != "") 
		{
		//on cherche l'acheteur avec les paramètres pseudo et mdp
			$sql .= " WHERE Login LIKE '%$Login%'";
			if ($Mdp != "") 
			{
				$sql .= " AND Mdp LIKE '%$Mdp%'";
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
				echo "Vous êtes connecté, " . $data['Login'] . "<br>";
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