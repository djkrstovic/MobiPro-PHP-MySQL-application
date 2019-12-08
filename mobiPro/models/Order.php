<?php
	class Order {
		private $db;

		public function __construct(Database &$db) {
			$this->db = $db;
		}

		public function getAll() {
			return $this->db->selectMany('SELECT * FROM `order` ORDER BY `created_at` DESC;');
		}

		public function add($phoneId, $forename, $surname, $email, $phone, $address, $quantity) {
			$sql = 'INSERT INTO `order` (phone_id, forename, surname, email, phone, address, quantity)
					VALUES (?, ?, ?, ?, ?, ?, ?);';
			return $this->db->execute($sql, [$phoneId, $forename, $surname, $email, $phone, $address, $quantity]);
		}
	}
