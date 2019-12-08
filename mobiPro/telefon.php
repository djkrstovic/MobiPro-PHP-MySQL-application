<?php
	require_once 'load_models.php';

	$telefonId = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

	$telefon = $PhoneModel->getById($telefonId);
	
	if ($telefon === null) {
		ob_clean();
		header('Location: index.php');
		exit;
	}

	require_once 'header.php';
?>
	<div id="grupa2">
		<h1>Poruči uređaj</h1>

		<div class="blok4lp">
			<h3><?php echo $telefon->name; ?></h3><br>
			<img src="<?php echo $telefon->image_path; ?>" alt="<?php echo $telefon->name; ?>"><br><br>

			<h3>Specifikacije:</h3>
			<?php foreach ($telefon->features as $feature): ?>
			<p><b><?php echo $feature->name; ?></b>: <?php echo $feature->value; ?></p>
			<?php endforeach; ?>

			<script>
				function showForm() {
					document.querySelector('#forma').classList.remove('hidden');
				}
			</script>
		</div>

		<div class="blok4lp">
			<div class="blokC">
				<button type="button" name="reg" class="reg" id="reg" onclick="showForm();">Kupite ovaj model</button>
				<form id="forma" class="hidden" onsubmit="return provera();" method="post" action="kupovina.php">
					<input type="hidden" name="telefonId" value="<?php echo $telefonId; ?>">
					<b>Poručite uređaj: </b><br><br>

					<p>Ime: </p>
					<tr><input type="text" class="forma1b" name="ime" id="ime" placeholder="Unesite vaše ime*"><span class="greska" id="gname"></span><br>

					<p>Prezime: </p>
					<tr><input type="text" class="forma1b" name="prezime" id="prezime" placeholder="Unesite vaše prezime*"><span class="greska" id="gname"></span><br>

					<p>E-mail: </p>
					<tr><input type="email" class="forma1b" name="email" id="email" placeholder="Unesite vaš e-mail*"><span class="greska" id="gemail"></span><br>

					<p>Telefon: </p>
					<input type="text" class="forma1b" name="telefon" id="telefon" placeholder="Unesite telefon u formatu 065-55-55-555"><span id="gtelefon"></span><br>

					<p>Adresa: </p>
					<input type="text" class="forma1b" name="adresa" id="adresa1" placeholder="Unesite adresu*"><span id="gadresa"></span><br>

					<p>Kolicina: (cena modela je <?php echo $telefon->price; ?> RSD)</p>
					<input type="number" min="1" step="1" class="forma1b" name="kolicina" id="kolicina1" placeholder="Unesite kolicinu*"><span id="gkolicina"></span><br>

					<input type="submit" name="reg" class="reg" id="reg" value="Poruči"></td>

					<p id="p01">Sva polja su obavezna.</p>
				</form>
			</div>
		</div>
	</div>
<?php require_once 'footer.php';
