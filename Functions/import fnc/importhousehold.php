<?php  

//connect to the database 
$connect = mysql_connect("localhost","root",""); 
mysql_select_db("brisgis_db",$connect); //select the table 
// 


if (isset($_FILES['csv']['size']) > 0) { 

    //get the csv file 
    $file = $_FILES['csv']['tmp_name']; 
    $handle = fopen($file,"r"); 
    $count = -1;
    //loop through the csv file and insert into database 
    do { 
        if ($data[0]) { 
      $int= rand(512055681,1262055681);
      $structure = array('Concrete', 'Bamboo', 'Makeshift', 'Masonry', 'Metal', 'Wood');
      $index = rand(0,5);
      $constructed = date("Y-m-d",$int);
            mysql_query("INSERT INTO buildings (id, latitude, longitude, purok_id, name, year_constructed, net_value, building_usage, structure, area, holding, no_stories) VALUES 
                ( 
                  '".$count."',
                  '".addslashes($data[3])."',
                  '".addslashes($data[4])."',
                  '".addslashes($data[5])."',
                  '".addslashes($data[9])." Household',
                  '".$constructed."',
                  '".addslashes($data[39])."',
                  'Residential',
                  '".$structure[$index]."',
                  '".addslashes($data[41])."',
                  'Owner',
                  '1'
                ) 
            "); 
        } 
        $count = $count + 1;
    } while ($data = fgetcsv($handle,1000,",",'"','"')); 
    // 

    //redirect 
    header('Location: importhousehold.php?success=1'); die; 

} 

?> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>Import a CSV File with PHP & MySQL</title> 
</head> 

<body> 

<?php if (!empty($_GET['success'])) { echo "<b>Your file has been imported.</b><br><br>"; } //generic success notice ?> 

<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1"> 
  Choose your file: <br /> 
  <input name="csv" type="file" id="csv" /> 
  <input type="submit" name="Submit" value="Submit" /> 
</form> 

<?php
$int= mt_rand(512055681,1262055681);
      $structure = array('Concrete', 'Bamboo', 'Makeshift', 'Masonry', 'Metal', 'Wood');
      $index = mt_rand(0,5);
      $constructed = date("Y-m-d",$int);
      echo $structure[$index];
?>

</body> 
</html> 