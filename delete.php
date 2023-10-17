<?php 
    session_start();
    include "db.php";
    if(isset($_GET['deleteid']))
    {
        $id = $_GET['deleteid'];
        
        $delete_id = "DELETE FROM `news` WHERE id = '$id'";
        $delete_id_run = mysqli_query($db, $delete_id);
        
        if ($delete_id_run)
        {
            $_SESSION['status'] = "Yangilik bazadan muvaffaqiyatli o'chirildi";
            header("Location: index.php");
        } else {
            $_SESSION['status'] = "Yangilik bazadan o'chirmadi".mysqli_error();
            header("Location: index.php");
        }
    }
?>