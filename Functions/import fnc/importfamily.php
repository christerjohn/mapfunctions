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
              $index1 = rand(0,1);
              $index2 = rand(0,2);
              
              $if_4ps= array('Yes','No');
              $livelihood = array('Livestock', 'Farming', 'Small Business Store');

            mysql_query("INSERT INTO families (id, building_id, family_identifier, monthly_income, if_other_livelihood, livelihood, if_4ps) VALUES 
                ( 
                  '".$count."',
                  '".$count."',
                  '".addslashes($data[9])." Family',
                  '".addslashes($data[29])."',
                  'Yes',
                  '".$livelihood[$index2]."',
                  '".$if_4ps[$index1]."'
                ) 
            "); 
        } 
        $count = $count + 1;
    } while ($data = fgetcsv($handle,1000,",",'"','"')); 
    // 

    //redirect 
    header('Location: importfamily.php?success=1'); die; 

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