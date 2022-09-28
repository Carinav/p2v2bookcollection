<?php

function connectToDatabase(): PDO
{
    $host = 'db';
    $db = '<bookcollector>';
    $user = 'root';
    $password = 'password';
    $dsn = "mysql:host=$host;dbname=$db";
    $options = [
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ];

    try {
        $pdo = new PDO($dsn, $user, $password, $options);
    } catch (\PDOException $exception) {
        throw new \PDOException($exception->getMessage(), (int)$exception->getCode());
    }
    return $pdo;
}

// 1. Connect to database and save in variable
//$host = 'db';
//$db = 'bookcollector';
//$user = 'root';
//$password = 'password';
//
//$dsn = "mysql:host=$host;dbname=$db";
//
//$options = [
//    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
//    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
//];
//
//try {
//    $pdo = new PDO($dsn, $user, $password, $options);
//} catch (\PDOException $exception) {
//    throw new \PDOException($exception->getMessage(),(int)$exception->getcode());
//}

// 2. Prepare statement

function extractFromDB ($pdo):
$query = $pdo->prepare('SELECT 
    `title`, `authors`.`author`, `year`, `length`, `lengthunits`.`lengthunit`, `genders`.`gender`, `countries`.`country`, 
    `formats`.`format`, `fiction`,`ownvoices`,`imageurl`,`goodreadsurl` 
    FROM `books`
JOIN `authors` ON `books`.`author` = `authors`.`id`
JOIN `lengthunits` ON `books`.`lengthunit` = `lengthunits`.`id`
JOIN `genders` ON `books`.`gender` = `genders`.`id`
JOIN `countries` ON `books`.`country` = `countries`.`id`
JOIN `formats` ON `books`.`format` = `formats`.`id`;
');

$query->execute();

$result = $query->fetchALL();

//echo '<pre>';
//var_dump($result);
//echo '</p>';



//
//function <function name>(PDO $pdo): array
//{
//    $query = $pdo->prepare(<SQL Query>)
//    $query->execute();
//    return $query->fetchAll();
//}
