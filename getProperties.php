<?php 
	
	//Importing dbdetails file 
	require_once 'dbDetails.php';
	
	//connection to database 
	$con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect...');
	
	//sql query to fetch all records 
	$sql = "SELECT pr.property_id, pr.address, pr.listing_price, bu.building_style FROM property pr JOIN building bu on pr.property_id = bu.property_id";
	
	//getting records 
	$result = mysqli_query($con,$sql);
	
	//response array 
	$response = array(); 
	$response['error'] = false; 
	$response['images'] = array(); 
	
	//traversing through all the rows 
	while($row = mysqli_fetch_array($result)){
		$temp = array(); 
		$temp['id']=$row['property_id'];
		$temp['address']=$row['address'];
		$temp['price']=$row['listing_price'];
		$temp['style']=$row['building_style'];
		//$temp['url']=$row['url'];
		array_push($response['images'],$temp);
	}
	mysqli_close($con);
	//displaying the response 
	echo json_encode($response);
	
?>