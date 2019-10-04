<?php

session_start();
$_session["admin_KODE"];
$_session["admin_EMAIL"];

unset($_session["admin_KODE"]);
unset($_session["admin_EMAIL"]);

session_unset();
session_destroy();

header("location:login2.php");
?>