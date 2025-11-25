<?php


$id = $_GET['id'];

$con = new PDO("mysql:host=localhost;dbname=banco2;charset=utf8",  "root", "");

$sql = "UPDATE orcamento SET resposta = 'S' WHERE id = :id";
$qry = $con->prepare($sql);

$qry->bindParam(":id", $id, PDO::PARAM_STR);

echo $sql;

$qry->execute();
?>