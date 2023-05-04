<?php

$db_name = "mysql:host=localhost;dbname=shop_db";
$username = "root";
$password = "";

$conn = new PDO($db_name, $username, $password);

use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';



?>