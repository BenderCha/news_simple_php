<?php
    $db = mysqli_connect("localhost", "root", "", "news_db");

    if (!$db)
    {
        echo "Bazaga ulanishda xatolik".mysqli_error();
    }

?>