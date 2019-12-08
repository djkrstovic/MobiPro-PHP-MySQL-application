<!DOCTYPE html>
<html>
<head>
	<title>MobiPro - prodavnica telefona</title>
	<link rel="icon" href="favicon-32x32a.png" type="image/png" sizes="32x32">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="MobiPro - prodavnica telefona" />
	<meta name="keywords" content="MobiPro - prodavnica telefona, MobiPro, prodavnica, telefona" />
	<meta name="author" content="Djordje Krstovic 2016200485"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="language" content="english"/>
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/media-queries.css"/>
	<link href="slider/js-image-slider.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
    <script src="slider/js-image-slider.js" type="text/javascript"></script>
    
</head>

<body>

<div id="okvir6">
	<div id="heder">
		
			<div id="logo">
				<img src="img/Logo.jpg">
			</div>
			<ul>
				<li><a href="index.php">Početna</a></li>
				<li><a href="store.php">Prodavnica</a></li>
				<li><a href="about.php">O nama</a></li>
				<li><a href="contact.php">Kontakt</a></li>
			</ul>
			<div class="cistac">
			</div>
	</div>
	
	
	
	
	<div id="sredina">
		
		<div id="grupa1">
			<div id="sliderFrame">
				<div id="slider">
					<?php foreach ($BannerModel->getAll() as $banner): ?>
						<img src="<?php echo $banner->image_path; ?>" alt="Banner <?php echo $banner->banner_id; ?>">
					<?php endforeach; ?>
				</div>
				<!-- strelice sa strane -->
				<div class="group1-Wrapper">
					<a onclick="imageSlider.previous()" class="group1-Prev"></a>
					<a onclick="imageSlider.next()" class="group1-Next"></a>
				</div>
				<!-- kontrolni dumgici prev/next-->
				<div style="text-align:center;padding:20px;z-index:20;">
					<a onclick="imageSlider.previous()" class="group2-Prev"></a>
					<a id='auto' onclick="switchAutoAdvance()"></a>
					<a onclick="imageSlider.next()" class="group2-Next"></a>
				</div>
			</div>
		</div>
