<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Data Mining - Suhu</title>
    <style type="text/css">
      hr{
        height: 5px;
      }
    </style>
  </head>
  <body>
    
    <header>
      <nav class="navbar navbar-dark bg-dark">
        <span class="navbar-brand mb-0 h1">Pendeteksi Indikator Suhu Ruangan</span>
      </nav>
    </header>

    <main class="container my-5">
      <div class="text-center my-4">
        <a class="btn btn-primary align-center btn-lg" href="#" role="button">Add New Data</a>
      </div>
      <h2>Available Data</h2>
      <hr class="bg-dark">
      <table class="table table-sm table-hover">
        <thead class="thead-dark">
          <tr>
            <th class="text-center">#</th>
            <th class="text-center">Room Volume</th>
            <th class="text-center">People Qty</th>
            <th class="text-center">Time</th>
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
            while ($count < 10) {
              $count++;
              ?>
                <tr >
                  <td class="text-center"><?=$count?></td>
                  <td class="text-center">anu</td>
                  <td class="text-center">anu</td>
                  <td class="text-center">anu</td>
                  <td class="text-center">anu</td>
                  <td class="text-center">anu</td>
                  <td class="text-center">anu</td>
                  <td class="text-center">anu</td>
                  <td class="text-center">anu</td>
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
      <div class="py-5"></div>
    </main>

    <footer>
      <nav class="fixed-bottom navbar-dark bg-dark p-2">
        <div class="container-fluid">
          <div class="row">
            <div class="col-6 px-5">
              <p class="m-2 text-muted text-left">Copyright &copy; 2021 All Rights Reserved</p>
            </div>
            <div class="col-6 px-5">
              <p class="m-2 text-muted text-right">Rama & Daru</p>
            </div>
          </div>
        </div>
      </nav>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://use.fontawesome.com/e0201ced35.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>