<?php
ob_start();
session_start();
require_once 'dbconnect.php';
// if session is not set this will redirect to login page
// select logged-in users details

if(isset($_SESSION["user"])){
	header('Location: home.php');
}

$res=mysqli_query($conn, "SELECT * FROM users WHERE userId=".$_SESSION['admin']);
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
?>
<!DOCTYPE html>
<html>
<head>
<title>Welcome - <?php echo $userRow['userName' ]; ?></title>
</head>
<body >
           Hi <?php echo $userRow['userEmail' ]; ?>
           
           <a  href="logout.php?logout">Sign Out</a>
 
 <div class ="manageUser">
   <a href= "create.php"><button type="button" >Add User</button></a>
   <table  border="1" cellspacing= "0" cellpadding="0">
       <thead>
           <tr>
               <th>Name</th>
               <th >Date of birth</th>
               <th> Image</th>
               <th>Option</th>
           </tr>
       </thead>
       <tbody>

            <?php
           $sql = "SELECT * FROM AdminTable WHERE active = 0";
           $result = $conn->query($sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                   echo  "<tr>
                       <td>" .$row['first_name']." ".$row['last_name' ]."</td>
                       <td>" .$row['date_of_birth']."</td>
						 <td><img src='" .$row['image']."'></td>
                       <td>
                           <a href='update.php?id=" .$row['id']."'><button type='button'>Edit</button></a>
                           <a href='delete.php?id=" .$row['id']."'><button type='button'>Delete</button></a>
                       </td>
                   </tr>" ;
               }
           } else  {
               echo  "<tr><td colspan='5'><center>No Data Avaliable</center></td></tr>";
           }
            ?>

           
       </tbody>
   </table>
</div>
       
 
</body>
</html>
<?php ob_end_flush(); ?>