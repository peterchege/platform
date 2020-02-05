<?php

$connect = new PDO("mysql:host=localhost;dbname=apa_website","root","VDW-pNs-Mk6-gLQ");

$query = "SELECT name, email , mobile, product_name, location,
products_leads.created_at
FROM products, products_leads WHERE 
leads_product_id = product_id
ORDER BY products_leads.created_at DESC";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

$total_rows = $statement->rowCount();

$download_filelink = '<ul class="list-unstyled">';

if(isset($_POST["export"]))
{
	require_once 'class/PHPExcel.php';
	$last_page = ceil($total_rows/$_POST["records_no"]);
	$start = 0;
	$file_number = 0;
	for($count = 0; $count < $last_page; $count++)
	{
		$file_number++;
		$object = new PHPExcel();
		$object->setActiveSheetIndex(0);
		$table_columns = array("Name","Email","Mobile","Product","City","Date");
		$column = 0;
		foreach($table_columns as $field)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
			$column++;
		}

		$query = "SELECT name, email, mobile, product_name, location, 
		products_leads.created_at
		FROM products, products_leads WHERE 
		leads_product_id = product_id
		ORDER BY products_leads.created_at DESC";
		$statement = $connect->prepare($query);
		$statement->execute();
		$excel_result = $statement->fetchAll();
		$excel_row = 2;
		foreach($excel_result as $sub_row)
		{
		
			$object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $sub_row["name"]);
			$object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $sub_row["email"]);
			$object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $sub_row["mobile"]);
			$object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $sub_row["product_name"]);
			$object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $sub_row["location"]);
			$object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $sub_row["created_at"]);
			
			
			$excel_row++;
		}
		$start = $start + $_POST["records_no"];
		$object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
		$file_name = 'file/Lead-'.$file_number.'.xls';
		$object_writer->save($file_name);
		$download_filelink .= '<li><label><a href="download.php?filename='.$file_name.'" target="_blank">Download - '.$file_name.'</a></label></li>';
	}
	$download_filelink .= '</ul>';
}

?>
<html>
	<head>
		<title>Leads from the website. </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container box">
		<h3 align="center" ><font color="blue">Website Leads</font></h3>
		<img src="img/Apollo.png" style="float:left;width:200px;height:100px;">
			
			<br />
			<br />
			<form method="post">
				<div class="row">
					<div class="col-md-3" align="right"><label>No. of Records in Each File</label></div>
					 <div class="col-md-2">
						<select name="records_no" class="form-control">
							<option value="500">All Records</option>
							<!-- <option value="300">300 Records</option>
							<option value="200">200 Records</option>
							<option value="100">100 Records</option>
							<option value="50">50 Records</option> -->
						</select>	
					</div> 
					<div class="col-md-2">
						<input type="submit" name="export" class="btn btn-success" value="Export to Excel" />
					</div>
					<div class="col-md-2">
						<?php echo $download_filelink; ?> 
					</div>
				</div>
			</form>
			<br />
			<div class="table-responsive">
				<table id="customer_data" class="table table-bordered table-striped">
					<thead>
						<tr>
						    
							<th>Name</th>
							<th>Email</th>
							<th>Mobile</th>
							<th>Product</th>
							<th>City</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
					<?php
					foreach($result as $row)
					{
						echo '
						<tr>
						  
							<td>'.$row["name"].'</td>
							<td>'.$row["email"].'</td>
							<td>'.$row["mobile"].'</td>
							<td>'.$row["product_name"].'</td>
							<td>'.$row["location"].'</td>
							<td>'.$row["created_at"].'</td>
						</tr>
						';
					}
					?>
					</tbody>
				</table>
			</div>
		</div>
		<br />
		<br />
	</body>
</html>