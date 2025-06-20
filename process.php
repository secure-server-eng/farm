<?php
   // Database configuration    
   $hostname = "localhost"; 
   $username = "root"; 
   $password = ""; 
   $dbname   = "digitalc_farm";
    
   // Create database connection 
   $con = new mysqli($hostname, $username, $password, $dbname); 
    
   // Check connection 
   if ($con->connect_error) { 
       die("Connection failed: " . $con->connect_error); 
   }
   
 define('D_SERVER', 'localhost');
define('D_USERNAME', 'root');
define('D_PASSWORD', '');
define('D_NAME', 'digitalc_farm');	
try{
    $pdo = new PDO("mysql:host=" . D_SERVER . ";dbname=" . D_NAME, D_USERNAME, D_PASSWORD);
    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}
if (isset($_GET['del'])) {
	$id = $_GET['del'];
	mysqli_query($db, "DELETE FROM users WHERE id=$id");
	$_SESSION['message'] = "Staff member removed!"; 
	header('location: index.php');
}
?>
<?php
  $host_name = 'localhost';
  $database = 'digitalc_farm';
  $user_name = 'root';
  $password = '';

  try {
    $con = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password);
  } catch (PDOException $e) {
    echo "Error!: " . $e->getMessage() . "<br/>";
    die();
  }
?>
<?php
// Database configuration    
$hostname = 'localhost';
$username = 'root'; 
$password = ''; 
$dbname   = 'digitalc_farm';
 
// Create database connection 
$con = new mysqli($hostname, $username, $password, $dbname); 
 
// Check connection 
if ($con->connect_error) { 
    die("Connection failed: " . $con->connect_error); 
}
?>
<?php
// Database configuration    
$servername = 'localhost';
$username = 'root'; 
$password = ''; 
$dbname   = 'digitalc_farm';
 
// Create database connection 
$conn = new mysqli($servername, $username, $password, $dbname); 
 
// Check connection 
if ($con->connect_error) { 
    die("Connection failed: " . $con->connect_error); 
}
?>