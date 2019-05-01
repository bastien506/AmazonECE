<?php

$Prenom = isset($_POST["prenom"])? $_POST["prenom"] : "";
$Nom = isset($_POST["nom"])? $_POST["nom"] : "";
$Photo = isset($_POST["photo"])? $_POST["photo"] : "";
$ImgFond = isset($_POST["imgfond"])? $_POST["imgfond"] : "";
$NbItems = isset($_POST["nbitems"])? $_POST["nbitems"] : "";

$Login = isset($_POST["uname"])? $_POST["uname"] : "";
$Email = isset($_POST["psw"])? $_POST["psw"] : "";
 
$database = "amazonece";
$db_handle = mysqli_connect('localhost', 'root', '');
$db_found = mysqli_select_db($db_handle, $database);

	if ($db_found) 
	{
		$sql = "SELECT * FROM vendeurs";
		if ($Login != "") 
		{
		
			$sql .= " WHERE Login LIKE '%$Login%'";
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
				echo "Données personnelles : " . "<br>";
				echo "Prénom : " . $data['Prenom'] . "<br>";
				echo "Nom :  " . $data['Nom'] . "<br>";
				echo "Pseudo " . $data['Login'] . "<br>";
				echo "Email : " . $data['Email'] . "<br>";
				echo "Photo : " . $data['Photo'] . "<br>";
				echo "Image fond : " . $data['ImgFond'] . "<br>";
				echo "Nombre d'items : " . $data['NbItems'] . "<br>" . "<br>";
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
