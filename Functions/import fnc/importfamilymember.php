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
            mysql_query("INSERT INTO family_members (family_id, resident_id) VALUES 
                ( 
                  '".$count."',
                  '".$count."'
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

</body> 
</html> 