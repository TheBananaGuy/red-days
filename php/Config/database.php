<?php

class Database {

	// Access info
	// 					NB!
	// Localize these access strings
	private $db_host = 'localhost';
	private $db_name = 'example_database';
	private $db_user = 'example_user';
	private $db_pass = 'example_password';

	public $connection;

	// Connection establishment
	public function getConnection() {
		$this->connection = null;
		try {
			$this->connection = new PDO(
				'mysql:host='.$this->db_host.';dbname='.$this->db_name,
				$this->db_user,
				$this->db_pass,
				[
					PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
					PDO::MYSQL_ATTR_INIT_COMMAND => "SET CHARACTER SET utf8"
				]
			);
		} catch(PDOExeption $exeption) {
			print 'Connection error: '.$exeption->getMessage();
		}
		return $this->connection;
	}

}

?>