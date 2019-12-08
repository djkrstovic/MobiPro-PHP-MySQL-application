<?php
	require_once 'load_models.php';
	require_once 'header.php'; ?>
	
	<div id="grupa2">
		<h1>Početna</h1>
       
        
		<?php
			$brojac = 0;
			foreach ($ArticleModel->getTop(3) as $vest) {
				require 'vest-render-' . ($brojac%2) . '.php';
				$brojac++;
			}
		?>
	</div>
	
<?php require_once 'footer.php';