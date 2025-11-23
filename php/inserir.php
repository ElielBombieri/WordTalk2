<?php


$name = $_GET['name'];
$text = $_GET['text'];

$con = new PDO("mysql:host=localhost;dbname=banco2;charset=utf8",  "root", "");

$sql = "INSERT INTO depoimentos (name, text) VALUES (:name, :text)";
$qry = $con->prepare($sql);

$qry->bindParam(":name", $name, PDO::PARAM_STR);
$qry->bindParam(":text", $text, PDO::PARAM_STR);

echo $sql;

$qry->execute();
?>