<?php
	require_once 'Configuration.php';
	require_once 'Database.php';

	$database = new Database(Configuration::DB_HOST, Configuration::DB_NAME, Configuration::DB_USER, Configuration::DB_PASS);
	
	require_once 'models/Banner.php';
	require_once 'models/Article.php';
	require_once 'models/Phone.php';
	require_once 'models/Page.php';
	require_once 'models/Order.php';
	
	$BannerModel  = new Banner($database);
	$ArticleModel = new Article($database);
	$PhoneModel   = new Phone($database);
	$PageModel    = new Page($database);
	$OrderModel   = new Order($database);
