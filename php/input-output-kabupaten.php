<?php
ob_start();
session_start();
if(!isset($_SESSION['admin_EMAIL'])){
	header("location:login2.php");
}
include "includes/config.php";
	include ("adminmenu.php");
if(isset($_POST['Simpan'])){
	$kabupatenKODE=$_POST['inputkabupatenkode'];
	$kabupatenNAMA=$_POST['inputkabupatennama'];
	$kabupatenALAMAT=$_POST['inputkabupatenalamat'];
	$kabupatenKET=$_POST['inputkabupatenket'];
	
	mysqli_query($connection,"INSERT INTO kabupaten VALUES ('$kabupatenKODE','$kabupatenNAMA','$kabupatenALAMAT','$kabupatenKET')");
		 
}
$query=mysqli_query($connection, "SELECT * FROM kabupaten");
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/cssglobal.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  </head>
  <body>
  <div class="title container-fluid">
		<h3><b>ENTRI DATA KABUPATEN</b></h3>
   </div>
</br>   
  <div class="col-sm-8">
	<form method="POST">
	  <div class="form-group row">
		<label for="kabupatenKODE" class="text-right col-sm-4 col-form-label"><b>Kode Kabupaten</b></label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kabupatenkode" name="inputkabupatenkode" placeholder="Kode Kabupaten">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kabupatenNAMA" class="text-right col-sm-4 col-form-label"><b>Nama Kabupaten</b></label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kabupatennama" name="inputkabupatennama" placeholder="Nama Kabupaten">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kabupatenALAMAT" class="text-right col-sm-4 col-form-label"><b>Alamat Kabupaten</b></label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kabupatenalamat" name="inputkabupatenalamat" placeholder="Alamat Kabupaten">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kabupatenKET" class="text-right col-sm-4 col-form-label"><b>Keterangan Kabupaten</b></label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kabupatenket" name="inputkabupatenket" placeholder="Keterangan Kabupaten">
		</div>
	  </div>
	  <div class="form-group row">
		<div class="col-sm-4">
	  </div>
	  <div class="col-sm-8">
		<input type="submit" class="btn btn-primary" value="Simpan" name="Simpan">
		<input type="reset" class="btn btn-success" value="Batal" name="Batal">
	  </div>
	</div>
	</form>
	</div>
	
	<table class="w3-table w3-blue"> 
	  <thead>
	<tr class="w3-red">
		  <th scope="col">No</th>
		  <th scope="col">Kode Kabupaten</th>
		  <th scope="col">Nama Kabupaten</th>
		  <th scope="col">Alamat Kabupaten</th>
		  <th scope="col">Keterangan Kabupaten</th>
	    </tr>
	  </thead>
	  <tbody>
	  <?php if(mysqli_num_rows($query)>0) 
	  {?>
		<?php $nomor=1;
		while ($row = mysqli_fetch_array($query))
		{?>
		<tr>
		  <th scope="row"><?php echo $nomor; ?></th> 
		  <td><?php echo $row["kabupatenKODE"];?></td>
		  <td><?php echo $row["kabupatenNAMA"];?></td>
		  <td><?php echo $row["kabupatenALAMAT"];?></td>
		  <td><?php echo $row["kabupatenKET"];?></td> 
		  </tr>
		<?php $nomor++; }?>
	  <?php } ?>	
	  </tbody>
	</table>	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>
<?php include ("adminfooter.php") ?>