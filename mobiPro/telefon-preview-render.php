<div class="blok">
	<img src="<?php echo $telefon->image_path; ?>" alt="<?php echo $telefon->name; ?>">
	<h2><?php echo $telefon->name; ?></h2>
	<p><?php echo $telefon->description; ?></p>
    <p>Cena: <?php echo $telefon->price; ?> RSD</p>
	<a href="telefon.php?id=<?php echo $telefon->phone_id; ?>"><button class="buttonR"><span>Poruči </span></button></a>
</div>
