<?php
    require_once 'functions.php';
?>

<!DOCTYPE html>
<html lang="en-GB">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <title>The Library - Book Collector App</title>
    <link href="CSS/normalize.css" rel="stylesheet" type="text/css">
    <link href="CSS/style.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/355d886c96.js" crossorigin="anonymous"></script>
</head>

<body>
    <section class="header" id="returntohead">
        <p class="preheader">Welcome to the</p>
        <h1 class="pagetitle">THE LIBRARY</h1>
    </section>

    <div class="intro">
        <p>
            I love reading, but over the last few years I have realised that I hadn't been reading from a diverse
            enough range of creators. So I decided to keep track of what I'm reading and who wrote it!
        </p>
        <p>
            My Library is keeping track of the country of origin of the books I've read, the gender of
            the creator, and if the book is OwnVoices or not.
        </p>
        <p class="ownvoices">
            What does OwnVoices mean? OwnVoices is a hashtag and category coined in 2015 by author
            Corinne Duyvis. It is used to indicate "books where the protagonist and the author share a
            marginalized identity".
        </p>
    </div>

    <div class="tileflex">
        <?php
            $pdo = connectToDatabase();
            $books = extractFromDB($pdo);
            echo generateTile($books);
        ?>
    </div>

    <footer>
        <p><a href="#returntohead">Back to top</a></p>
    </footer>

</body>