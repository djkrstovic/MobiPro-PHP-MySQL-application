<?php
	require_once 'load_models.php';

	if (!$_POST) {
		header('Location: store.php');
		exit;
	}
	
	$telefonId = filter_input(INPUT_POST, 'telefonId', FILTER_SANITIZE_NUMBER_INT);

	$telefonObject = $PhoneModel->getById($telefonId);
	
	if ($telefonObject === null) {
		ob_clean();
		header('Location: index.php');
		exit;
	}
	
	$ime = filter_input(INPUT_POST, 'ime', FILTER_SANITIZE_STRING);
	$prezime = filter_input(INPUT_POST, 'prezime', FILTER_SANITIZE_STRING);
	$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
	$telefon = filter_input(INPUT_POST, 'telefon', FILTER_SANITIZE_STRING);
	$adresa = filter_input(INPUT_POST, 'adresa', FILTER_SANITIZE_STRING);
	$kolicina = filter_input(INPUT_POST, 'kolicina', FILTER_SANITIZE_STRING);
	$date = date('j. n. Y. H.i.s');
	
	$OrderModel->add($telefonId, $ime, $prezime, $email, $telefon, $adresa, $kolicina);

	require_once 'header.php';
?>
	
	<div id="grupa2">
		<h1>Porudzbina</h1>
		
		Ime: <?php echo htmlspecialchars($ime); ?><br>
		Prezime: <?php echo htmlspecialchars($prezime); ?><br>
		E-mail: <?php echo htmlspecialchars($email); ?><br>
		Telefon: <?php echo htmlspecialchars($telefon); ?><br>
		Adresa: <?php echo htmlspecialchars($adresa); ?><br>
		Kolicina: <?php echo htmlspecialchars($kolicina); ?><br>
        Racun: <?php echo htmlspecialchars($kolicina * $telefonObject->price); ?><br>
		Datum: <?php echo htmlspecialchars($date); ?><br>
	</div>
	
<?php require_once 'footer.php';