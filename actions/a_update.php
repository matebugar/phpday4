<?php 

require_once '../dbconnect.php';

if ($_POST) {
   $fname = $_POST['first_name'];
   $lname = $_POST['last_name'];
   $dob = $_POST[ 'date_of_birth'];

   $id = $_POST['id'];

   $sql = "UPDATE AdminTable SET first_name = '$fname', last_name = '$lname', date_of_birth = '$dob' WHERE id = {$id}" ;
   if($conn->query($sql) === TRUE) {
       echo  "<p>Successfully Updated</p>";
       echo "<a href='../update.php?id=" .$id."'><button type='button'>Back</button></a>";
       echo  "<a href='../adminpanel.php'><button type='button'>Home</button></a>";
   } else {
        echo "Error while updating record : ". $conn->error;
   }

   $conn->close();

}

?>