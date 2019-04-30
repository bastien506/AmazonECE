<?php

$Login = isset($_POST["uname"])? $_POST["uname"] : "";
$Email = isset($_POST["psw"])? $_POST["psw"] : "";

$database = "amazonece";
$db_handle = mysqli_connect('localhost', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);

if ($_POST["button1"]) 
{
	if ($db_found) 
	{
		$sql = "SELECT * FROM vendeurs";
		if ($Login != "") 
		{
		//on cherche le vendeur avec les paramètres pseudo et mdp
			$sql .= " WHERE Login LIKE '%$Login%'";
			if ($Email != "") 
			{
				$sql .= " AND Email LIKE '%$Email%'";
			}
	}
	$result = mysqli_query($db_handle, $sql);

		//regarder s'il y a de résultat
		if (mysqli_num_rows($result) == 0) 
		{
		//le vendeur recherché n'existe pas
			echo "Vendeur not found";
		} 
		else 
		{
		//on trouve le vendeur recherché
			while ($data = mysqli_fetch_assoc($result)) 
			{
				echo "Vous êtes connecté, " . $data['Login'] . "<br>";
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