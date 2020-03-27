<?php
$server = "localhost";
$user = "root";
$pass = "";
$dbname = "uts";

$conn = mysqli_connect($server, $user, $pass, $dbname);

if (!$conn) {
    die("koneksi error" . mysqli_connect_error());
}
