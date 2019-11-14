<?php 

require_once '../dbconnect.php';

if ($_POST) {
   $fname = $_POST['first_name'];
   $lname = $_POST['last_name'];
   $dob = $_POST[ 'date_of_birth'];

   $sql = "INSERT INTO AdminTable (first_name, last_name, date_of_birth) VALUES ('$fname', '$lname', '$dob')";
    if($conn->query($sql) === TRUE) {
       echo "<p>New Record Successfully Created</p>" ;
       echo "<a href='../create.php'><button type='button'>Back</button></a>";
        echo "<a href='../adminpanel.php'><button type='button'>Home</button></a>";
   } else  {
       echo "Error " . $sql . ' ' . $conn->conn_error;
   }

   $conn->close();
}

?>