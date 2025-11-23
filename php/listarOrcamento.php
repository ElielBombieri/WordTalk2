<?php
$con = new PDO("mysql:host=localhost;dbname=banco2;charset=utf8", "root", "");

$sql = "SELECT * FROM orcamento ORDER BY id";
$qry = $con->prepare($sql);
$qry->execute();
$nr = $qry->rowCount();

$registros = $qry->fetchAll(PDO::FETCH_OBJ);

echo json_encode($registros);
?>