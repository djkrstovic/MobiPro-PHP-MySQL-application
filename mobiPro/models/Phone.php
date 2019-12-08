<?php
	class Phone {
		private $db;

		public function __construct(Database &$db) {
			$this->db = $db;
		}
		
		private function fillPhoneData(&$phone) {
			$phone->features = $this->db->selectMany(
				'SELECT
					feature.name,
					phone_feature.value
				FROM
					phone_feature
				INNER JOIN feature ON feature.feature_id = phone_feature.feature_id
				WHERE
					phone_id = ?
				ORDER BY
					feature.name ASC;', [ $phone->phone_id ]);
					
			$phone->manufacturer = $this->db->selectSingle('SELECT * FROM manufacturer WHERE manufacturer_id = ?', [ $phone->manufacturer_id ]);
		}

		public function getAll() {
			$phones = $this->db->selectMany('SELECT * FROM `phone` ORDER BY `created_at` DESC;');
			
			for ($i=0; $i<count($phones); $i++) {
				$this->fillPhoneData($phones[$i]);
			}
	
			return $phones;
		}
		
		public function getById($id) {
			$phone = $this->db->selectSingle('SELECT * FROM `phone` WHERE phone_id = ?;', [ $id ]);
			
			if ($phone == null) {
				return null;
			}
			
			$this->fillPhoneData($phone);
			
			return $phone;
		}
	}
