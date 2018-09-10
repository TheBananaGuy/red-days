<?php

// Headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Dependencies
include_once '../Config/database.php';
include_once '../Objects/holiday_object.php';

// Initialize connection
$database = new Database();
$connection = $database->getConnection();

// Query data
$holiday = new Holiday($connection);
$holiday->date = isset($_GET['date']) ? $_GET['date'] : die();

// prep for fetching
$statement = $holiday->getDaily();
$amount = $statement->rowCount();

// If any matches to the query - fetch and filter it to show as json
if($amount>0){
	$holiday_array=array();
	$holiday_array["records"]=array();
	while ($row = $statement->fetch(PDO::FETCH_ASSOC)){
		extract($row);
		$holiday_item=array(
			"id" => $id,
			"type" => $type,
			"date" => $date,
			"name" => $name
		);
		array_push($holiday_array["records"], $holiday_item);
	}
	echo json_encode($holiday_array);
	// Or show that nothing's there
} else {
	echo json_encode(
		array("message" => "Nothing found.")
	);
}

?>