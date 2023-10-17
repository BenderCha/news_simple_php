<?php
    session_start();
    include "db.php";
    include "header.php"
?>

    <div class="wrapper">
        <div class="container">
            <?php
                include "nav.php";
            ?>
            <section class="main">
                    <?php 
                        if (isset($_SESSION['status']))
                        {
                            echo "<div class='alert alert-info'>".$_SESSION['status']."</div>";
                            unset($_SESSION['status']);
                        }
                    ?>
                <div class="content">
                    <div class="content-right">
                        
                        <?php
                            $view_news = "SELECT * FROM `news`";
                            $view_news_run = mysqli_query($db, $view_news);
                            while($row = mysqli_fetch_assoc($view_news_run))
                            {
                                $id = $row['id'];
                                $title = $row['title'];
                                $desc = $row['description'];
                                $content = $row['content'];
                                $image = $row['image'];
                                $created_at = $row['created_at'];

                                echo "<div class='content-right-title'>".$title."</div>";
                                echo "<div class='content-right-img'><img src='$image' class='img-fluid' width='500'></div>";
                                echo "<div class='content-right-content'>".$content."</div>";
                                echo "<br><hr>";
                                echo "<div class='text-end'><a class='text-danger' href='delete.php?deleteid=".$id."'>Delete</a></div>";
                                echo "<br>";
                            }
                        ?>
                        
                        
                    </div>
                    <!-- <div class="content-left"></div> -->
                </div>
            </section>
        </div>
    </div>
    <script src="js.js"></script>
</body>
</html>