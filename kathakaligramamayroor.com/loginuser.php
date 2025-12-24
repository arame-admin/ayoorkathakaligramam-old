<?php
session_start();
 $conn_error = 'could not  connect';
$mysql_host = 'FixMe';
$mysql_user = 'root';
$mysql_pass = '';
$mysql_db = 'Fixme';
$username = $_POST['user'];
$password = $_POST['pass'];
//echo $username;
//echo $password;
$_SESSION['user'] = $username;
$_SESSION['pass'] = $password;
if($username && $password) 
{
	$connect = mysqli_connect($mysql_host,$mysql_user,$mysql_pass,$mysql_db) or die("could not connect");
	mysqli_select_db(mysqli_connect($mysql_host,$mysql_user,$mysql_pass),$mysql_db)  or die("Database not  found");
	$querry = mysqli_query(mysqli_connect($mysql_host,$mysql_user,$mysql_pass,$mysql_db) ,"SELECT * FROM users_login where ul_user='$username'");

	$numrows = mysqli_num_rows($querry);
		
		if($numrows!==0)
		{
			while($rows = mysqli_fetch_assoc($querry))
			    {
				$dbusername = $rows['ul_user'];
				$dbpassword = $rows['ul_pass'];
				$dbusertype = $rows['ul_type'];
				}
			
			if($username == $dbusername && $password == $dbpassword && $dbusertype == 'tester')
			
			{
                                  //echo "login  to principal sucess";
				
				echo "<script>window.open('Admins.php','_self')</script>";
				@ $_session['username'] = $username;
				
			}
				
			else if($username == $dbusername && $password == $dbpassword && $dbusertype == 'tester')
				{
 				echo "login  to student sucess";
				echo "<script>window.open('newsscroll.php','_new')</script>";
				@ $_session['username'] = $username;
				}
			
			else 
			echo "your password is incorrect";//.$dbusername."user".$dbpassword;
		}
		else die("the user doesnt exit");
}
else die("please enter a username and password");

?>
