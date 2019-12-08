<?php
	require_once 'load_models.php';
	require_once 'header.php'; ?>

        <div id="grupa3">
			
			<div id="tekst">
				<h1></h1></br>
				<h3>MobiPro online prodavnica</h3></br></br>
    <p>U prikazu ispod teksta možete odabrati model uređaja koji želite da poručite.</br></br>
    Trenutno u ponudi imamo 6 aktuelnih uređaja. 
    O svakom uređaju možete pročitati više i poručiti ga klikom na dugme "Poruči".</br>
    </p>
			</div>
		
		</div>
			
		<div id="grupa2st">
			<h1>Prodavnica</h1>
             
			<?php
				foreach ($PhoneModel->getAll() as $telefon) {
					require 'telefon-preview-render.php';
				}
			?>
		</div>
        
<?php require_once 'footer.php';