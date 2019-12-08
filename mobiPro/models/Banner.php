<?php
	class Banner {
		private $db;

		public function __construct(Database &$db) {
			$this->db = $db;
		}

		public function getAll() {
			return $this->db->selectMany('SELECT * FROM `banner` WHERE `is_visible` = 1 ORDER BY `position`;');
		}
	}
