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
        <h3 class="text-dark text-center mb-3">Add new data</h3>
        <form method="post" action="#popup1">

          <div class="form-group">
            <label for="exampleInputEmail1">Room Volume</label>
            <input type="number" class="form-control bg-transparent text-dark rounded-0" name="RoomVolume" placeholder="Room Volume" required>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">People Quantity</label>
            <input type="number" class="form-control bg-transparent text-dark rounded-0" name="PeopleQty" placeholder="People Quantity" required>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Time</label>
            <input type="time" class="form-control bg-transparent text-dark rounded-0" name="Time" placeholder="Time" required>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Month</label>
            <select name="Month" class="form-control bg-transparent text-dark rounded-0">
              <option value="1" selected>January</option>
              <option value="2">February</option>
              <option value="3">March</option>
              <option value="4">April</option>
              <option value="5">May</option>
              <option value="6">June</option>
              <option value="7">July</option>
              <option value="8">Agustus</option>
              <option value="9">September</option>
              <option value="10">October</option>
              <option value="11">November</option>
              <option value="12">December</option>
            </select>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Weather</label>
            <select name="Weather" class="form-control bg-transparent text-dark rounded-0">
              <option value="1" selected>Sunny</option>
              <option value="2">Rainy</option>
              <option value="3">Overcast</option>
            </select>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Cooler Quantity</label>
            <input type="number" class="form-control bg-transparent text-dark rounded-0" name="CoolerQty" placeholder="Cooler Quantity" required>
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Meters Above Sea Level</label>
            <input type="number" class="form-control bg-transparent text-dark rounded-0" name="MASL" placeholder="Meters Above Sea Level" required>
          </div>

           <button type="submit" name="submit" class="mt-4 mb-3 btn btn-success btn-block">Input</button>
        </form>
      </div>
    </div>
    
  </main>

  <div id="popup1" class="overlay">
    <div class="popup text-center">
      <h3>Confirm your input</h3>
      <a class="close" href="#">&times;</a>
      <div class="mt-3 content text-center">
        <p>make sure that your data is valid.</p>
        <a href="#" class="btn btn-danger">Cancel</a>
        <a href="index.php" class="btn btn-success">Confirm</a>
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