<?php


$name = $_GET['name'];
$number = $_GET['number'];
$email = $_GET['email'];
$gender = $_GET['gender'];

$con = new PDO("mysql:host=localhost;dbname=banco2;charset=utf8",  "root", "");

$sql = "INSERT INTO orcamento (name, number, email, gender) VALUES (:name, :number, :email, :gender)";
$qry = $con->prepare($sql);

$qry->bindParam(":name", $name, PDO::PARAM_STR);
$qry->bindParam(":number", $number, PDO::PARAM_STR);
$qry->bindParam(":email", $email, PDO::PARAM_STR);
$qry->bindParam(":gender", $gender, PDO::PARAM_STR);

echo $sql;

$qry->execute();
?>