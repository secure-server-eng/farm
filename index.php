<?php include('menu.php') ?>
<!DOCTYPE html>
<?php
require_once "process.php";

$qry = mysqli_query($con,"select * from animals"); 

$data = mysqli_fetch_array($qry);
?>
<html lang="en">
<head>
  <style>
        .wrapper{
            width: 600px;
            margin: 0 auto;
        }
    </style>
</head>
  <body>
  <p></p>
  <div class = 'container-fluid'>
  <p></p>
  <p></p>
        <h4 class="mb-0 mt-0">Welcome,Farm manager</h4>
      </div>
    <p></p>
<div class="container-fluid">
<div class="row">
<div class="col-sm-2">
    <div class="card">
     <a href="settings.php" class="btn  btn-primary" role="button" aria-pressed="true">Quick Add</a><br>
     <a href="settings.php" class="btn  btn-dark" role="button" aria-pressed="true">Accounting</a><br>
     <a href="settings.php" class="btn  btn-dark" role="button" aria-pressed="true">Livestock</a><br>
     <a href="settings.php" class="btn  btn-dark" role="button" aria-pressed="true">Crops</a><br>
     <a href="settings.php" class="btn  btn-dark" role="button" aria-pressed="true">Human resource</a><br>
     <a href="settings.php" class="btn  btn-dark" role="button" aria-pressed="true">Reports</a><br>
     <a class="btn btn-outline-danger" role="button"a href="logout.php">LOGOUT&nbsp;<i class="fa fa-sign-out"></i></a>
    </div>
    </div>
  <div class="col-sm-5">
  <center><h3>LIVESTOCK</h3></center>
    <div class="card">
      <div class="card-body">
          <h7 class="card-title">Pigs</h7>
      <div class="col-8">
<div class="display-4 font-weight-bold text-gray-1200">150 <a href="settings.php" class="btn btn-sm btn-success" role="button" aria-pressed="true">More details</a> </div>
</div>
          <p></p>
<p></p>
    </div>
     <h7 class="card-title">Chicken</h7>
      <div class="col-8">
<div class="display-4 font-weight-bold text-gray-1200">600 <a href="settings.php" class="btn btn-sm btn-success" role="button" aria-pressed="true">More details</a></div>
          <p></p>
<p></p>
    </div>
         <h7 class="card-title">Cattle</h7>
      <div class="col-8">
<div class="display-4 font-weight-bold text-gray-1200">10 <a href="settings.php" class="btn btn-sm btn-success" role="button" aria-pressed="true">More details</a></div>
</div>
          <p></p>

            </div>
    </div>
    <div class="col-sm-5">
    <center><h3>FINANCIALS</h3></center>
    <div class="card">
      <div class="card-body">
          <h7 class="card-title">INCOME <a href="settings.php" class="btn btn-sm btn-success" role="button" aria-pressed="true">    Last 7 days</a> <a href="settings.php" class="btn btn-sm btn-success" role="button" aria-pressed="true">30 days</a>
            <a href="settings.php" class="btn btn-sm btn-success" role="button" aria-pressed="true">6 months</a>  <a href="settings.php" class="btn btn-sm btn-success" role="button" aria-pressed="true">  1 year</a></h7>
      <div class="col-8">
<div class="display-4 font-weight-bold text-gray-1200">Kshs 305000</div>
</div>
          <p></p>
    </div>
    <p></p>
    <p></p>
    <h7 class="card-title">EXPENSES <a href="settings.php" class="btn btn-sm btn-danger" role="button" aria-pressed="true">    Last 7 days</a> <a href="settings.php" class="btn btn-sm btn-danger" role="button" aria-pressed="true">30 days</a>
            <a href="settings.php" class="btn btn-sm btn-danger" role="button" aria-pressed="true">6 months</a>  <a href="settings.php" class="btn btn-sm btn-danger" role="button" aria-pressed="true">  1 year</a></h7>
      <div class="col-8">
<div class="display-4 font-weight-bold ">Kshs 97300</div>
</div>
          <p></p>
          <center><a href="financials.php" class="btn btn-success" role="button" aria-pressed="true">Full report</a></center>
    </div>
    </div>
</div>
</div>
</div>
<div class="container-fluid">       
    <div class="row">
    <div class="col-md-6">
                    <div class="wrapper">
                        <br>
                        <h7 class="card-title">Average daily production(milk)</h7>
      <div class="col-8">
<div class="display-4 font-weight-bold text-gray-1200">100 liters</div>
          <p></p>
      </div>
      </div>
      </div>
      <div class="col-md-6">
                    <div class="wrapper">
                        <br>
                        <h7 class="card-title">Average daily production(eggs)</h7>
      <div class="col-8">
<div class="display-4 font-weight-bold text-gray-1200">400</div>
          <p></p>
      </div>
      </div>
      </div>
      </div>
      </div>
<br>
<br>
                 <br>
                        </div>
                </div>
       </div>
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
 <div class="container-fluid">       
    <div class="row">
    <div class="col-md-12">
                    <div class="wrapper">
                        <br>
                        <h7 class="card-title">Average daily production(milk)</h7>
      <div class="col-8">
<div class="display-4 font-weight-bold text-gray-1200">600 liters</div>
          <p></p>
<br>
<br>
                 <br>
                        </div>
                </div>
       </div>
        </div>
  </div>
</div>
  </div>
  <br>
</body>
</html>