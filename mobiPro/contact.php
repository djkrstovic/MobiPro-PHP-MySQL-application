<?php
	require_once 'load_models.php';
	require_once 'header.php'; 
	$page = $PageModel->getById(2);
?>
	
		
		<div id="grupa2">
			
			<h1 class=""><?php echo $page->title; ?></h1>
			<?php echo $page->content; ?>
		
		</div>
		
		
	
	</div>
	
	

</div>
<?php require_once 'footer.php';