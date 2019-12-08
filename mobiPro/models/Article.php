<?php
	class Article {
		private $db;

		public function __construct(Database &$db) {
			$this->db = $db;
		}

		public function getAll() {
			return $this->db->selectMany('SELECT * FROM `article` WHERE `is_visible` = 1 ORDER BY `created_at` DESC;');
		}

		public function getTop(int $number = 5) {
			$number = max(1, $number);
			return $this->db->selectMany('SELECT * FROM `article` WHERE `is_visible` = 1 ORDER BY `created_at` DESC LIMIT 0, ' . $number . ';'); # LIMIT ne moze kao parametar u bind prepared izraza...
		}
	}
