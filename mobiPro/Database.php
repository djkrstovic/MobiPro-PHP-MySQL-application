<?php
	class Database {
		private $connection;

		public function __construct(string $host, string $base, string $user, string $pass) {
			$this->connection = new PDO("mysql:host={$host};dbname={$base};charset=utf8", $user, $pass);
		}

		public function execute(string $sql, array $params = []) { # INSERT, UPDATE, DELETE
			$prep = $this->connection->prepare($sql);
			return $prep->execute($params);
		}

		public function selectSingle(string $sql, array $params = []) {
			$prep = $this->connection->prepare($sql);
			$res = $prep->execute($params);
			
			if (!$res) {
				return null;
			}
			
			return $prep->fetch(PDO::FETCH_OBJ);
		}

		public function selectMany(string $sql, array $params = []) {
			$prep = $this->connection->prepare($sql);
			$res = $prep->execute($params);
			
			if (!$res) {
				return [];
			}
			
			return $prep->fetchAll(PDO::FETCH_OBJ);
		}
	}
