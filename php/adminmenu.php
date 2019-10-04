<?php 
ob_start();
if(!isset($_SESSION['admin_EMAIL']))
{
	header("location:login2.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <link href="css/bootstrap3.min.css" rel="stylesheet">	
	<link href="css/bootstrap3.css" rel="stylesheet" type="text/css">
    <link href="css/menuvertical.css" rel="stylesheet" type="text/css">
</head>
<body>
  
<div class="row affix-row">
<div class="col-sm-3 col-md-2 affix-sidebar">
<div class="sidebar-nav">
	<div class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <span class="visible-xs navbar-brand">Sidebar menu</span>
    </div>
    <div class="navbar-collapse collapse sidebar-navbar-collapse">
      <ul class="nav navbar-nav" id="sidenav01">
        <li class="active">
          <a href="adminINDEX.php" data-toggle="collapse" data-target="#toggleDemo0" data-parent="#sidenav01" class="collapsed">
		  <img src="logountar.jpg" alt="Snow" style="width:5%">
          <h4>HOME</h4>
          </a>
        </li>
        <li>
          <a href="#" data-toggle="collapse" data-target="#toggleDemo" data-parent="#sidenav01" class="collapsed">
          <span class="glyphicon glyphicon-envelope"></span> Obyek Wisata <span class="caret pull-right"></span>
          </a>
          <div class="collapse" id="toggleDemo" style="height: 0px;">
            <ul class="nav nav-list">
              <li><a href="input-output-kategoriwisata.php">Kategori Obyek</a></li>
            </ul>
          </div>
        </li>
        <li>
          <a href="#" data-toggle="collapse" data-target="#toggleDemo2" data-parent="#sidenav01" class="collapsed">
          <span class="glyphicon glyphicon-envelope"></span> Berita <span class="caret pull-right"></span>
          </a>
          <div class="collapse" id="toggleDemo2" style="height: 0px;">
            <ul class="nav nav-list">
              <li><a href="input-output-kategoriberita.php">Kategori Berita</a></li>
              <li><a href="input-output-detailberita.php">Detil Berita</a></li>
            </ul>
          </div>
        </li>
        <li><a href="input-output-kecamatan.php"><span class="glyphicon glyphicon-pencil"></span> Kecamatan</a></li>
        <li><a href="input-output-kabupaten.php"><span class="glyphicon glyphicon-pencil"></span> Kabupaten</a></li>
        <li><a href="logout.php"><span class="glyphicon glyphicon-pencil"></span> Sign Out</a></li>
		<div class="w3-panel w3-blue-grey w3-display-container">
    <span class="w3-button w3-display-topright"></span>
    <p>@Herdiman 535150042 </p>
	<p>	UAS PHP 2018  </p>
  </div>
      </ul>
    </div><!-- petnutup nav-collapse -->
    </div>
</div>
</div>

<div class="col-sm-9 col-md-10 affix-content">


