<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <link rel="stylesheet" type="text/css" href="style.css">

  <title>Data Mining - Suhu</title>
</head>
<body>
  <?php 
    include 'database.php';
    include 'knnprocess.php';
   ?>

  <!-- """""""""""""""""""""""""""""""""""""""""""""""""""  HEADER  """"""""""""""""""""""""""""""""""""""""""""""""""" -->
  <header>
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand mb-0 h1" href="index.php">Pendeteksi Indikator Suhu Ruangan</a>
    </nav>
  </header>

  <!-- """""""""""""""""""""""""""""""""""""""""""""""""""  MAIN  """"""""""""""""""""""""""""""""""""""""""""""""""" -->

  <main class="container my-5">
    <div >
      
    </div>
    <div class="row justify-content-md-center container-fluid p-5 mb-5 text-dark formputih">

      <div class="col-7 p-5">
        <h3 class="text-dark mb-5 text-center">New Data Result</h3>
        
        <div class="container pt-4">
          <table class="table">
            <tr>
              <td>Room Size</td>
              <td class="text-center"><?=$RoomSize?> m<sup>2</sup></td>
            </tr>
            <tr>
              <td>People Quantity</td>
              <td class="text-center"><?=$PeopleQty?></td>
            </tr>
            <tr>
              <td>Time</td>
              <td class="text-center"><?=$Time?> (GMT+7)</td>
            </tr>
            <tr>
              <td>Month</td>
              <td class="text-center"><?=$Month?></td>
            </tr>
            <tr>
              <td>Weather</td>
              <td class="text-center"><?=$Weather?></td>
            </tr>
            <tr>
              <td>Cooler Quantity</td>
              <td class="text-center"><?=$CoolerQty?></td>
            </tr>
            <tr>
              <td>Meters Above Sea Level</td>
              <td class="text-center"><?=$MASL?> MASL</td>
            </tr>
            <tr>
              <td><b>Temperature Indicator</b></td>
              <td class="text-center"><b><?=$TempIndicator?></b></td>
            </tr>
            <tr>
              <td class="text-center pt-5" colspan="2">
                <a class="btn btn-danger rounded-0 align-center mx-2" href="index.php" role="button">Cancel</a>
                <a class="btn btn-success rounded-0 align-center mx-2" href="#popup1" role="button">Save</a>
              </td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </main>

  <div id="popup1" class="overlay">
    <div class="popup text-center">
      <h3>Confirm your input</h3>
      <a class="close" href="#">&times;</a>
      <div class="mt-3 content text-center">
        <p>make sure that your data is valid.</p>
        <form method="POST" action="inputprocess.php">
          <a href="#" class="btn btn-danger">No</a>
          <input type="hidden" name="RoomSize" value="<?=$dataSample[0]?>">
          <input type="hidden" name="PeopleQty" value="<?=$dataSample[1]?>">
          <input type="hidden" name="Time" value="<?=$dataSample[2]?>">
          <input type="hidden" name="Month" value="<?=$dataSample[3]?>">
          <input type="hidden" name="Weather" value="<?=$dataSample[4]?>">
          <input type="hidden" name="CoolerQty" value="<?=$dataSample[5]?>">
          <input type="hidden" name="MASL" value="<?=$dataSample[6]?>">
          <input type="hidden" name="Temp" value="<?=$dataSample['temp']?>">
          <button type="submit" name="yes" class="btn btn-success">Yes</button>
        </form>
      </div>
    </div>
  </div>

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