<?php
    session_start();
    include "db.php";
    include "header.php";
    if (isset($_POST['addnews']))
    {
        $title = $_POST['title'];
        $description = $_POST['description'];
        $content = $_POST['content'];
        // $created_at = $_POST['created_at'];
        if (!empty($_FILES['image']))
        {
            $image = $_FILES['image'];

            $image_name = $image['name'];

            $image_tmpname = $image['tmp_name'];
            
            $image_massiv = explode(".", $image_name); //massivga ajratish 'ismi[0]','formati[1]'
            
            $image_extension = strtolower(end($image_massiv)); //massivdan ikkinchisisni olish 'formati[1]'

            $extension = ['jpeg','jpg','png']; //rasm formatlari

            // var_dump($image_extension); die();
            
            if (in_array($image_extension,$extension))
            {
                
                $image_path = 'img/'.md5($image_name).'.'.$image_extension;
                if (!move_uploaded_file($image_tmpname,$image_path))
                {
                    echo "Xatolik rasm yuklanmadi";
                } else {
                    $check_db = mysqli_query($db, "SELECT * FROM news WHERE title = '$title'");
                    if (!mysqli_num_rows($check_db) > 0)
                    {
                        if (!empty($title) && !empty($description) && !empty($content) && !empty($image_path))
                        {
                            $add_news = "INSERT INTO `news` (title,description,content,image) VALUES('$title','$description','$content','$image_path')";
                            $add_news_run = mysqli_query($db, $add_news);
                            header("Location: index.php");
                            $_SESSION['status'] = "Yangilik qo'shildi";
                        } else {
                            header("Location: index.php");
                            $_SESSION['status'] = "Bo'limlar bo'sh, to'ldirish shart";
                        }
                    } else {
                        header("Location: index.php");
                        $_SESSION['status'] = "Xatolik ushbu yangilik mavjud";
                    }
                    
                }
                // var_dump($image_path); die();
            }
        }
    }
    
?>

    <div class="wrapper">
        <div class="container mt-5">
            <div class="row">
            <?php
                include "nav.php";
            ?>
            <h3 class="container_title rounded">Add post </h3>
                <form method="POST" class="d-flex" enctype="multipart/form-data">
                    <div class="col-lg-8">
                        <div class="mb-3 field">
                            <label for="title">Title</label>
                            <input type="text" id="title" class="form-control" name="title">
                        </div>
                        <div class="mb-3 field">
                            <label for="description">Description</label>
                            <input type="text" id="description" class="form-control desc" name="description">
                        </div>
                        <div class="mb-3 field">
                            <label for="content">Content</label>
                            <textarea type="text" id="content" class="form-control cont" name="content" rows="5"></textarea>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="mb-3 field">
                            <label for="img">Image</label>
                            <input type="file" id="img" class="form-control" name="image">
                        </div>

                        <div class="d-grid gap-2 me-3">
                            <button type="submit" id="btn" name="addnews" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>