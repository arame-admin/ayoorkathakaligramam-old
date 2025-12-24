<?php

 $conn_error = 'could not  connect';
$mysql_host = 'FixMe';
$mysql_user = 'root';
$mysql_pass = '';
$mysql_db = 'Fixme';


if(!mysqli_connect($mysql_host,$mysql_user,$mysql_pass)||!mysqli_select_db(mysqli_connect($mysql_host,$mysql_user,$mysql_pass),$mysql_db) )
							   {
								die($conn_error);
							   }
   else
     {
       echo 'Ok.';
     



if(isset($_POST['submit']))
{
$title = $_POST['dates'];
$content = $_POST['msg'];
	 
  
	 $query = "INSERT INTO users_message(um_date,um_message) values('$title','$content')";
     $mysql_link = mysqli_connect($mysql_host,$mysql_user,$mysql_pass,$mysql_db);
    $queryexe=mysqli_query($mysql_link,$query) or die( mysqli_error($mysql_link));
      
	  if(mysqli_query($queryexe)){
	  
	  echo "submitted  sucessfully";
	echo "<script>window.open('News.php','_parent')</script>";
	  

	  
}
}
}

?>
