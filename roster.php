<?php include('menu.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .wrapper{
            width: 100%;
            margin: 0 auto;
        }
        table tr td:last-child{
            width: auto;
        }
        table {
  counter-reset: no -1;;
}
table tr {
  counter-increment: row-num;
}
table tr td:first-child::before {
    content: counter(row-num) "";
}
    </style>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
</head>

<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <legend><center><h2><b>Appointments list (All time)</b></h2></center></legend>
</div>
                    </div>
                    <div id = "mydiv">
                    <?php
                    // Include config file
                    require_once "process.php";
                    // Attempt select query execution
                    $sql = "SELECT * FROM members where suid = '".$_SESSION['SUID']."' ORDER BY id DESC";
                    if($result = $pdo->query($sql)){
                        if($result->rowCount() > 0){
                            echo '<table class="table table-borderless" cellpadding="1" table id="myTable">';
                            
                                echo "<thead>";
                                        echo "<th>#</th>";
                                        echo "<th>NAME</th>";
                                        echo "<th>APPOINTMENTDATE</th>";
                                        echo "<th>STATUS</th>";
                                        echo "<th></th>";
                                    echo "</tr>";
                                echo "</thead>";
                                echo "<tbody>";
                                while($row = $result->fetch()){
                                    echo "<tr>";
                                        echo "<td></td>";
                                        echo "<td>" . $row['name']."</td>";
                                        echo "<td>" . $row['appointmentdate']."</td>";
                                        echo "<td>" . $row['status']."</td>";
                                        echo "<td>";
                                            echo '<a href="analysis.php?id='. $row['id'] .'" class="mr-3" title="View Record" data-toggle="tooltip"><span class="btn btn-success btn-mini"></i>More info</button></span></a>';
                                    echo "</tr>";
                                }
                                echo "</tbody>";                            
                            echo "</table>";
                            // Free result set
                            unset($result);
                        } else{
                            echo '<div class="alert alert-danger"><em>No appointments recorded yet.</em></div>';
                            echo '<a href="dentisthome.php" class="mr-3" title="View Record" data-toggle="tooltip"><span class="btn btn-success btn-mini"></i>Go back home</button></span></a>';
   
                        }
                    } else{
                        echo "Oops! Something went wrong. Please try again later.";
                    }
                    
                    // Close connection
                    unset($pdo);
                    ?>
                </div>
            </div>        
        </div>
    </div>
    <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 1; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<script>$(document).ready( function () {
    $('#myTable').DataTable(
        {     

"aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
  "iDisplayLength": 10
 } 
    );
} );</script>
<script>   
    function printFunction() {
            var divContents = document.getElementById("mydiv").innerHTML;
            var prnt = window.open('', '', 'height=auto, width=auto');
             prnt .document.write(divContents);
            prnt .document.close();
            prnt .print();
}
</script>
</body>
</html>