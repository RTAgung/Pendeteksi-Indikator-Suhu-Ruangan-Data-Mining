<?php 
	include 'database.php';
	if (isset($_POST['yes'])) {
		foreach ($_POST as $key => $value) {
			${$key} = $value;
		}

		// $query = "INSERT INTO data VALUES ($RoomSize, $PeopleQty, $Time, $Month, $Weather, CoolerQty, $MASL, $TempIndicator)";
		// $exe = mysqli_query($link, $query);

		header("location: index.php");
	} else {
		header("location: confirm.php");
	}
 ?>