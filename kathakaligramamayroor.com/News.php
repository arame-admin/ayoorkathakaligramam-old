<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="icon" type="image/png" href="images/logo_header.jpg"/>
    <title>Natyabharati Kathakali Center</title>

<meta name="description" content="Natyabharati Kathakali Center" />
<meta name="keywords" content="Ranni,Pathanamtitta,news, Kathakali Gramam,Kathakali Mela, kathakali,art form of kerala,Kathakali Stories, kathakali orgin, kathakali Group, kathakali center," />   <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">
   <link rel="stylesheet" href="css/style.css">
  
 
  </head>
  <body >
   <div class="mainhead">
  	<div class="logoone"><img src="images/logo_header.jpg"/></div>
    <div class="maintitle">
    	<div class = "mainone"><p>KATHAKALI GRAMAM</p></div>
		<div class ="maintwo"><p>A Y R O O R</p></div>
    </div>
	</div><!-- end of mainhead-->
   
    <div id="navbarjoe">
          <div class="navbar-collapse collapse">
        	 <ul class="nave navbar-nave ">
            		<li><a href=News.php>ADD LATEST NEWS</a><div style="background-color:#8F0318"></div></li>
                    <!--<li><a href=AddGallery.php>ADMINISTRATE GALLERY</a><div style="background-color:#8F0318"></div></li>-->
                    <li><a href=index.php>LOGOUT</a><div style="background-color:#8F0318"></div></li>
              </ul>
            </div>
        </div>
<div class="container">
      <div class="row" style="margin-left:90px">
		<div class="col-md-4 thumbnail text-justify:left">
                <h3>Instructions for adding Latest NEWS</h3>
                <ul>
                <li>
                <p>To Add Latest News Type the Date in 'dd-mm-yyyy' format,Type the message and Press Submit</p></li>
               <li> <p>To Remove Old news Select the Date and Click On Delete Button</p></li></ul>
                
        </div> 
                
                
       <div class="col-lg-4">
            <div class="thumbnail">
                <h3>Add Latest News</h3>
                      <table cellspacing="5">
                                <form action="addnews.php" method="post" enctype="multipart/form-data">
                                <tr>
                                <td>Date:</td>
                                <td><input type="text" name="dates" style="color:#000" />
                                </tr> 
                                 <tr><td><br></td></tr> 
                                <tr>
                                <td>Message:</td>
                                <td><input type="text" name="msg" style="color:#000"/>
                                </tr> 
                                   <tr><td><br></td></tr>                            
                                
                                <td>Submit </td>
                                <td ><input type="submit" name="submit" value="Submit" style="color:#000"/>
                                </tr> 
                                </form>
                                </table>
                            </div>
                	</div>    
                
          <div class="col-md-4">
             <div class="thumbnail">
                <h3>Delete Old News</h3>
                <p>
                
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
      
     }
$query = "select * from users_message order by um_id desc";

$mysql_link = mysqli_connect($mysql_host,$mysql_user,$mysql_pass,$mysql_db);
$result=mysqli_query($mysql_link,$query) or die( mysqli_error($mysql_link));
      
$i=0;
while($rows=mysqli_fetch_array($result))
{
$name[$i]=$rows['um_message'];
$umid[$i]=$rows['um_id'];
$i++;
}
$total_elmt=count($name);
?> 
<form method="POST" action="">
Select the message to delete: <select style="color:black" name="sel">
<option >Select</option>
<?php 
for($j=0;$j<$total_elmt;$j++)
{
?><option style="color:black" value="<?php echo $umid[$j] ?>"><?php 
echo $name[$j];
?></option><?php
}
?>
</select><br />

<div class="text-right">
<input name="submit" type="submit" value="Delete"/></div>
<br />

</form>

<?php

if(isset($_POST['submit']))
{

$selected_val = $_POST['sel'];
//echo "You have selected :" .$selected_val; 
//value="<?php $umid[$j] 

$query = "DELETE FROM users_message WHERE um_id='$selected_val'";
 
if(mysqli_query($query)){
echo "<script>window.open('News.php','_parent')</script>";
}
}
?>
                </p> 
             </div>   
                
          </div> 
                
		</div>	<!--row ends-->
        
</div> <!-- container ends-->



<div class="footnavbar navbar-inverse" role="navigation">
		<div class="container" style="margin-top:133px";>
           	<div class="navbar-text pull-right ">
            	<div class="footlogo">
                 <span>The official website of Kathakali Gramam Ayroor. Copyright &copy 2016 All Rights Reserved </span>
                 <span style="padding-left:250px; "> Designed and Developed by <img src="images/kujoeva-logo.png"></span>
                </div>
           
            </div>
             
        </div>

</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>

