<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <title>Data Mining - Suhu</title>
  <style type="text/css">
    hr{
      height: 5px;
    }
  </style>
</head>
<body>
  <?php 
    include 'database.php';
   ?> 


  <!-- """""""""""""""""""""""""""""""""""""""""""""""""""  HEADER  """"""""""""""""""""""""""""""""""""""""""""""""""" -->
  <header>
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand mb-0 h1" href="index.php">Pendeteksi Indikator Suhu Ruangan</a>
    </nav>
  </header>

  <!-- """""""""""""""""""""""""""""""""""""""""""""""""""  MAIN  """"""""""""""""""""""""""""""""""""""""""""""""""" -->

  <main class="container my-5">
    <div class="text-center my-4">
      <a class="btn btn-primary align-center btn-lg rounded-0" href="form.php" role="button">Add New Data</a>
    </div>
    <h2>Available Data</h2>
    <hr class="bg-dark">
    <?php 
      $queryData = "SELECT * FROM data ORDER BY Id DESC";
      $exeData = mysqli_query($link, $queryData);
     ?>
    <table class="table table-sm table-hover">
      <thead class="thead-dark">
        <tr>
          <th class="text-center">#</th>
          <th class="text-center">Room Size (m<sup>2</sup>)</th>
          <th class="text-center">People Qty</th>
          <th class="text-center">Time (GMT+7)</th>
          <th class="text-center">Month</th>
          <th class="text-center">Weather</th>
          <th class="text-center">Cooler Qty</th>
          <th class="text-center">MASL</th>
          <th class="text-center">Temp Indicator</th>
          <th class="text-center"></th>
        </tr>
      </thead>
      <tbody>
        <?php 
          $count = 0;
          while ($rowData = mysqli_fetch_object($exeData)) {
            $count++;

            $queryTemp = "SELECT TempIndicator FROM temp_indicator WHERE Id = ".$rowData->TempIndicator;
            $exeTemp = mysqli_query($link, $queryTemp);
            $rowTemp = mysqli_fetch_object($exeTemp);

            $queryMon = "SELECT Month FROM month WHERE Id = ".$rowData->Month;
            $exeMon = mysqli_query($link, $queryMon);
            $rowMon = mysqli_fetch_object($exeMon);
            
            $queryWeat = "SELECT Weather FROM weather WHERE Id = ".$rowData->Weather;
            $exeWeat = mysqli_query($link, $queryWeat);
            $rowWeat = mysqli_fetch_object($exeWeat);

            ?>
              <tr >
                <td class="text-center"><?=$count?></td>
                <td class="text-center"><?=$rowData->RoomSize?></td>
                <td class="text-center"><?=$rowData->PeopleQty?></td>
                <td class="text-center"><?=$rowData->Time?></td>
                <td class="text-center"><?=$rowMon->Month;?></td>
                <td class="text-center"><?=$rowWeat->Weather?></td>
                <td class="text-center"><?=$rowData->RoomSize?></td>
                <td class="text-center"><?=$rowData->RoomSize?></td>
                <td class="text-center"><b><?=$rowTemp->TempIndicator?></b></td>
                <td class="">
                  <a href="#" class="btn btn-sm btn-danger rounded-0 float-right mx-1">
                    <i class="fa fa-trash"></i>
                  </a>
                  <a href="#" class="btn btn-sm btn-success rounded-0 float-right mx-1">
                    <i class="fa fa-cog"></i>
                  </a>
                </td>
              </tr>
            <?php
          }
         ?>
      </tbody>
    </table>
  </main>

  <!-- """""""""""""""""""""""""""""""""""""""""""""""""""  FOOTER  """"""""""""""""""""""""""""""""""""""""""""""""""" -->

  <footer class="bg-dark p-2">
      <div class="container">
        <div class="row">
          <div class="col-6">
            <p class="m-2 text-muted text-left">Copyright &copy; 2021 All Rights Reserved</p>
          </div>
          <div class="col-6">
            <p class="m-2 text-muted text-right">Rama & Daru</p>
          </div>
        </div>
      </div>
  </footer>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://use.fontawesome.com/e0201ced35.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>