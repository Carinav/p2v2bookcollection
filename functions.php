<?php

function connectToDatabase(): PDO
{
    $host = 'db';
    $db = 'bookcollector';
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

// 2. Prepare statement

function extractFromDB (PDO $pdo): array
{
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
    return $query->fetchALL();
}

function formatOwnVoices(int $value): string
{
    if ($value === 0) {
        return "No";
    } else {
        return "Yes";
    }
}

function formatFiction(int $value): string
{
    if ($value === 0) {
        return "Non-Fiction";
    } else {
        return "Fiction";
    }
}

function generateTile(array $arrayFromDB): string
{
    if (count($arrayFromDB) === 0) {
        throw new Exception('No data from database');
    }
    if (
        !isset($arrayFromDB[0]['title']) ||
        !isset($arrayFromDB[0]['author']) ||
        !isset($arrayFromDB[0]['imageurl']) ||
        !isset($arrayFromDB[0]['format']) ||
        !isset($arrayFromDB[0]['length']) ||
        !isset($arrayFromDB[0]['lengthunit']) ||
        !isset($arrayFromDB[0]['fiction']) ||
        !isset($arrayFromDB[0]['year']) ||
        !isset($arrayFromDB[0]['country']) ||
        !isset($arrayFromDB[0]['gender']) ||
        !isset($arrayFromDB[0]['ownvoices']) ||
        !isset($arrayFromDB[0]['goodreadsurl'])
    ) {
        throw new Exception('No value has been set');
    }
    $tile = '';
    foreach ($arrayFromDB as $itemFromDB) {
    $tile .=
        '<div class="booktile">'

            . '<div class="booktitle">'
                . '<h3>' . $itemFromDB['title'] . '</h3>'
            . '</div>'

            . '<div class="bookauthor">'
                . '<p>by ' . $itemFromDB['author'] . '</p>'
            . '</div>'

            . '<img class="bookcover" src="'
            . $itemFromDB['imageurl'] . '" alt="Cover of ' . $itemFromDB['title'] . '">'

            . '<div class="allfacts">'
                . '<ul class="facts">'
                    . '<li>' . $itemFromDB['format'] . '</li>'
                    . '<li>' . $itemFromDB['length'] . ' ' . $itemFromDB['lengthunit'] . '</li>'
                    . '<li>' . formatFiction($itemFromDB['fiction']) . '</li>'
                . '</ul>'
                . '<ul class="facts">'
                    . '<li>' . 'Originally Published in ' . $itemFromDB['year'] . '</li>'
                    . '<li>'. $itemFromDB['country'] . '</li>'
                . '</ul>'
                . '<div class="facts">'
                    . '<p>Creator Gender: ' . $itemFromDB['gender'] . '</p>'
                . '</div>'
                . '<div class="facts">'
                    . '<p>Ownvoices: '. formatOwnVoices($itemFromDB['ownvoices'])  . '</p>'
                . '</div>'
            . '</div>'

            . '<div class="bookmoreinfo">'
                .'<p>'
                    . '<a href="' . $itemFromDB['goodreadsurl'] .
                        '"target="_blank">Find out more on goodreads <i class="fa-brands fa-goodreads fa-2xl"></i></a>'
                . '</p>'
            . '</div>'

        . '</div>';
}
    return $tile;
}



