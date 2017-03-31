<?php 
	$id = $_GET["MLS"];
	
	//Importing dbdetails file 
	require_once '../dbDetails.php';
	
	//connection to database 
	$con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect...');
	
	//sql query to fetch record about property 
	$sql_property = "SELECT property.property_id, property.property_type, mls_no, listing_price, address, description, property_for, land_size, zoning, taxes, taxes_year, amenities, features, 
		building_id, building_type, building_style, bedrooms, bathrooms, heating, cooling, flooring, parking, exterior, water, sewarage, year_built, foundation, walking_score
		FROM property
		INNER JOIN building
		ON property.property_id = building.property_id
		WHERE property.property_id=$id";
	$property_result = mysqli_fetch_array(mysqli_query($con,$sql_property));
	$building_id = $property_result['building_id'];
	
	//sql query to fetch all records of pictures related to the property
	$sql_image = "SELECT * FROM image where property_id = $id";	
	//getting records 
	$image_result = mysqli_query($con,$sql_image);
	
	//sql query to fetch all records of rooms related to the property
	$sql_room = "SELECT * FROM building_room where building_id = $building_id";	
	//getting records 
	$room_result = mysqli_query($con,$sql_room);
	
	
	//response array 
	$response = array(); 
	$response['error'] = false; 
	
	//Property record
	$response['propertyId'] = $property_result['property_id']; 
	$response['propertyType'] = $property_result['property_type']; 
	$response['mlsNo'] = $property_result['mls_no']; 
	$response['price'] = $property_result['listing_price']; 
	$response['address'] = $property_result['address']; 
	$response['description'] = $property_result['description']; 
	$response['propertyFor'] = $property_result['property_for']; 
	$response['landSize'] = $property_result['land_size']; 
	$response['zoning'] = $property_result['zoning']; 
	$response['taxes'] = $property_result['taxes']; 
	$response['taxesYear'] = $property_result['taxes_year'];
	$response['amenities'] = $property_result['amenities']; 
	$response['features'] = $property_result['features']; 
	$response['buildingId'] = $property_result['building_id']; 
	$response['buildingType'] = $property_result['building_type']; 
	$response['style'] = $property_result['building_style']; 
	$response['bedrooms'] = $property_result['bedrooms']; 
	$response['bathrooms'] = $property_result['bathrooms']; 
	$response['heating'] = $property_result['heating']; 
	$response['cooling'] = $property_result['cooling']; 
	$response['flooring'] = $property_result['flooring']; 
	$response['parking'] = $property_result['parking']; 
	$response['exterior'] = $property_result['exterior']; 
	$response['water'] = $property_result['water']; 
	$response['sewarage'] = $property_result['sewarage']; 
	$response['yearBuilt'] = $property_result['year_built']; 
	$response['foundation'] = $property_result['foundation']; 
	$response['walkingScore'] = $property_result['walking_score'];
	
	$response['images'] = array(); 
	// $response['rooms'] = array(); 
	
	//traversing through all the rows for images
	while($row = mysqli_fetch_array($image_result)){
		$temp = array(); 
		$temp['id']=$row['property_id'];
		$temp['name']=$row['image_name'];
		array_push($response['images'],$temp);
		// $temp['type']=$row['room_type'];
		// $temp['level']=$row['room_level'];
		// $temp['dimensions']=$row['dimensions'];
		//array_push($response['rooms'],$temp);
	}
	
	// $response['images'] = array(); 
	$response['rooms'] = array(); 
	
	//traversing through all the rows for rooms
	while($row = mysqli_fetch_array($room_result)){
		$temp = array(); 
		// $temp['id']=$row['property_id'];
		// $temp['address']=$row['address'];
		// $temp['price']=$row['listing_price'];
		// //$temp['url']=$row['url'];
		// array_push($response['images'],$temp);
		$temp['type']=$row['room_type'];
		$temp['level']=$row['room_level'];
		$temp['dimensions']=$row['dimensions'];
		array_push($response['rooms'],$temp);
	}
	
	//close connection
	mysqli_close($con);
	
	//displaying the response 
	echo json_encode($response);
	
?>