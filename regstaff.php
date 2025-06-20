<?php include('menu.php') ?>
<?php 
 include_once('process.php');
  if (isset($_POST['reg']))
  {
    $name = $con->real_escape_string($_POST['name']);
    $lastlogin     = $con->real_escape_string($_POST['lastlogin']);
    $role    = $con->real_escape_string($_POST['role']);
    $u    = $con->real_escape_string($_POST['u']);
    $p    = $con->real_escape_string(md5($_POST['p']));
     
  	$query = "INSERT INTO hq (name,lastlogin,role,u,p) 
  			  VALUES('$name','$lastlogin','$role','$u','$p')";
  	$result = $con->query($query);
     echo "<script>
      window.location.href = 'index.php';
      alert('Successfuly registered');
</script>";
      exit();
    }
    ?>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js" type="text/javascript"></script>
    </head>
<html>
<body>
    <p></p>
  <container>
      <div class = "container">
      <div class="row">
  <div class="col-md-8">
               <div class="card">
                <div class="card-body">
                  <form method="post" action="">
                    <h4><center>Register staff member</center></h4>
                     
                    </div>
                    <input type="text" name="status" hidden=hidden value="in queue" class="form-control" required />
                    <div class="col-md-8">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Full name</label>
                          <div class="col-sm-9">
                          <input type="text" id="name" name="name" class ="form-control"Required>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Date</label>
                          <div class="col-sm-9">
                          <input  type="date" name="lastlogin" class ="form-control"Required>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Username</label>
                          <div class="col-sm-9">
                            <input type="text" name="u" class="form-control" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Password</label>
                          <div class="col-sm-9">
                          <input type="password" name="p" class ="form-control">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Role</label>
                          <div class="col-sm-9">
                            <select type="text" name="intent" select class="form-control" Required>
                              <option></option>
                              <option>management</option>
                              <option>support</option>
                              <option>technical</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type ="" class="btn btn-success"name ="reg">Register </button>
</form>
</div>     
  </div>
  <div class="md-6">
      <div class="card bg-warning">
                <div class="card-body">
                    <div class="col mr-2">
                                            <div class="display-5 font-weight-bold  text-uppercase mb-1">Current staff:
                                            </div>
      <div class="md-6">
<div class="display-1 font-weight-bold  text-uppercase mb-1"><?php
                      require_once "process.php";
                      $nRows = $pdo->query('select count(*) from hq')->fetchColumn(); 
echo $nRows;
?></div>
</div>
  </div>
</div>
</div>
</div>
</div>
</container>
</body>
</html>