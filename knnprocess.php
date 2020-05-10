<?php 
	include 'database.php';

	if (isset($_POST['submit'])) {

		// get training data
		function getAllData(){
			global $link;
			$queryData = "SELECT * FROM data";
			$exeData = mysqli_query($link, $queryData);
			$count = 0;
			while ($rowData = mysqli_fetch_object($exeData)) {
				$data[$count][0] = $rowData->RoomSize;
				$data[$count][1] = $rowData->PeopleQty;
				$time = explode(":", $rowData->Time);
				$data[$count][2] = (int) $time[0];
				$data[$count][3] = $rowData->Month;
				$data[$count][4] = $rowData->Weather;
				$data[$count][5] = $rowData->CoolerQty;
				$data[$count][6] = $rowData->MASL;
				$data[$count]['temp'] = $rowData->TempIndicator;
				$data[$count]['calc'] = 0;
				$count++;
			}

			return $data;
		}
		// calculate distance
		function calcDistance(){
			global $dataSample;
			global $dataTraining;

			$countDataTraining = count($dataTraining);
			for ($i=0; $i < $countDataTraining; $i++) { 
				$sqrt = 0;
				for ($j=0; $j < 7; $j++) { 
					$sqrt += pow($dataTraining[$i][$j] - $dataSample[$j], 2);

				}
				$dataTraining[$i]['calc'] = (float) sqrt($sqrt);
			}
		}
		// search and get k-minimum distance
		function kMinDistance(){
			global $dataSample;
			global $dataTraining;

			// sort for search k-minimum distance
			$k = 3;
			usort($dataTraining, function($a, $b) {
			    return $a['calc'] - $b['calc'];
			});
			for ($i=0; $i < $k; $i++) { 
				$temp[$i] = $dataTraining[$i]['temp'];
			}
			// print_r($temp);
			
			// get sum of minimum distance
			$getCountTemp = array_count_values($temp);

			$x = 0;
			foreach ($getCountTemp as $key => $value) {
				if ($x < $value) {
					$max = $key;
					$x = $value;
				}
			}
			$dataSample['temp'] = $max;
		}
		
		foreach ($_POST as $key => $value) {
			${$key} = $value;
		}

		$hourTime = explode(':', $Time);
		$intTime = (int) $hourTime[0];
		$dataSample = array($RoomSize, $PeopleQty, $intTime, $Month, $Weather, $CoolerQty, $MASL, 'temp' => 0);

		$dataTraining = getAllData();
		
		calcDistance();
		kMinDistance();

		$queryTemp = "SELECT TempIndicator FROM temp_indicator WHERE Id = ".$dataSample['temp'];
		$exeTemp = mysqli_query($link, $queryTemp);
		$rowTemp = mysqli_fetch_object($exeTemp);
		$TempIndicator = $rowTemp->TempIndicator;

		$queryMon = "SELECT Month FROM month WHERE Id = ".$dataSample[3];
		$exeMon = mysqli_query($link, $queryMon);
		$rowMon = mysqli_fetch_object($exeMon);
		$Month = $rowMon->Month;

		$queryWeat = "SELECT Weather FROM weather WHERE Id = ".$dataSample[4];
		$exeWeat = mysqli_query($link, $queryWeat);
		$rowWeat = mysqli_fetch_object($exeWeat);
		$Weather = $rowWeat->Weather;

	} else {
		header("location: form.php");
	}
 ?>