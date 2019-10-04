
<?php
include "includes/config.php"; /** Untuk menyisipkan file koneksi ke file config.php **/
ob_start();
session_start();
if(!isset($_SESSION['admin_EMAIL']))
{
	header("location:login2.php");
}
include ("adminmenu.php");


     if(isset($_POST['Simpan']))
 	 {	
		if (isset($_REQUEST["inputkategorikode"]))
			{	$kategorikode = $_REQUEST["inputkategorikode"];
			} 
		if (!empty($kategorikode))
			{	$kategorikode = $_POST['inputkategorikode'];	
			} else {
					?> <h1>Maaf Anda Salah</h1><?php
					die ("ANDA harus mengisi Kode");
					}
		$kategorinama= $_POST['inputKategorinama'];
		$kategoriketerangan = $_POST['inputkategoriketerangan'];
		$kategorireferensi = $_POST['inputkategorireferensi'];	
		

     mysqli_query($connection, "INSERT INTO kategoriwisata VALUES ('$kategorikode',
	 '$kategorinama','$kategoriketerangan','$kategorireferensi')"); 
     header("location:input-output-kategoriwisata.php");
     }
	 
	$query = mysqli_query($connection, "SELECT * FROM kategoriwisata");	 
?>	

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" 
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="css/bootstrap3.min.css"> 		
	<link href="css/customgallery.css" rel="stylesheet">
	<link href="css/csscustom.css" rel="stylesheet">	
  </head>
  <body>
   <div class="title container-fluid">
		<h3><b>ENTRI DATA KATEGORIWISATA</b></h3>
   </div>
	
	<div class="col-sm-10">
	<form method="POST">
	  <div class="form-group row">
		<label for="kategorikode" class="col-sm-4 col-form-label">Kode Kategori Wisata</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kategorikode" 
				name="inputkategorikode" placeholder="Kode Kategori Wisata" maxlength="4" required="">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kategorinama" class="col-sm-4 col-form-label">Nama Kategori Wisata</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kategorinama" 
				name="inputkategorinama" placeholder="Nama Kategori Wisata">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kategoriketerangan" class="col-sm-4 col-form-label">Keterangan Kategori Wisata</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kategoriketerangan" 
				name="inputkategoriketerangan" placeholder="Keterangan Kategori Wisata">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kategorireferensi" class="col-sm-4 col-form-label">Referensi Kategori Wisata</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kategorireferensi" 
				name="inputkategorireferensi" placeholder="Referensi Kategori Wisata">
		</div>
	  </div>	  

	  <div class="form-group row">
		<div class="col-sm-4 col-form-label">
		</div>
		<div class="col-sm-8">
			<input type="submit" class="btn btn-primary" value="Simpan" name="Simpan">
			<input type="reset" class="btn btn-success" value="Batal" name="Batal">
		</div>
	  </div>		  
	</form>
	
<table class="w3-table w3-blue"> 
	  <thead>
		<tr class="w3-red">
		  <th scope="col">No</th>
		  <th scope="col">Kode Kategori</th>
		  <th scope="col">Nama Kategori</th>
		  <th scope="col">Keterangan Kategoi</th>
		  <th scope="col">Referensi Kategoi</th>
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
		  <td><?php echo $row["kategoriKODE"];?></td>
		  <td><?php echo $row["kategoriNAMA"];?></td>
		  <td><?php echo $row["kategoriKET"];?></td>
		  <td><?php echo $row["kategoriREFERENCE"];?></td> 
		  </tr>
		<?php $nomor++; }?>
	  <?php } ?>	
	  </tbody>
	</table>	
	
	</div> 
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" 
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

  </body>
</html>
<?php include ("adminfooter.php") ?>