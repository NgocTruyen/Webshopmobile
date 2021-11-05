<?php session_start();

if (isset($_SESSION['loginfront'])){
    unset($_SESSION["loginfront"]);
    
    header("location:index.php");
}
?>
