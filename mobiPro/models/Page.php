<?php
	class Page {
		private $db;

		public function __construct(Database &$db) {
			$this->db = $db;
		}

		public function getById($id) {
			return $this->db->selectSingle('SELECT * FROM `page` WHERE page_id = ?;', [ $id ]);
		}
	}
