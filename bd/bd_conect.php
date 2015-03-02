<?php
/**
 * Created by PhpStorm.
 * User: MantorovVV
 * Date: 07.04.2015
 * Time: 16:34
 */

  $user = 'root';
  $password='';
  $host='localhost';
  $conn='';
  $dbname='test';

  //соединения с MySQL при помощи PDO
  $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
  try {
    $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->exec("set names utf8");
  }
  catch(PDOException $e) {
    echo $e->getMessage();
  }


  $stmt = $db->query("SELECT *  FROM  `users` ");
  $rows = $stmt->fetchAll();
  $count = count($rows);

  foreach($rows as $row)
  {
    print_r($row[1].'<br>');
  }