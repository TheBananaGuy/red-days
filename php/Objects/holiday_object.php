<?php

class Holiday {

	// Database connection
	private $connection;
	private $table = 'estonian_holidays';

	// Model properties
	public $id;
	public $type;
	public $date;
	public $name;

	public function __construct($database) {
		$this->connection = $database;
	}

	// Get holidays for one day
	function getDaily () {
		$query = '
			SELECT id, type, date, name 
			FROM '.$this->table.' 
			WHERE date = :date';
		$statement = $this->connection->prepare($query);
		$statement->bindParam(':date', $this->date);
		$statement->execute();

		return $statement;
	}
}

?>