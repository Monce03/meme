<?php
include "includes/config.php";
ob_start();
session_start();
if(!isset($_SESSION['admin_EMAIL']))
{
	header("location:login2.php");
}
include ("adminmenu.php");

     if(isset($_POST['Simpan']))
 	 {	
		$kecamatanKODE = $_POST['inputkecamatanKODE'];					
		$kecamatanNAMA= $_POST['inputkecamatanNAMA'];
		$kecamatanALAMAT= $_POST['inputkecamatanALAMAT'];
		$kecamatanKET = $_POST['inputkecamatanKET'];	
		$kecamatanTGL = $_POST['inputkecamatanTGL'];	
		$kecamatanFOTO=$_FILES['file']['name'];
		$file_tmp=$_FILES['file']['tmp_name'];
		move_uploaded_file($file_tmp, 'iconfoto/'.$kecamatanFOTO);
		
			$kabupatenKODE=$_POST['kabupatenKODE'];
		

     mysqli_query($connection, "INSERT INTO kecamatan VALUES ('$$kecamatanKODE',
	 '$kecamatanNAMA','$kecamatanALAMAT','$kecamatanKET','$kecamatanTGL','$kecamatanFOTO','$kabupatenKODE')"); 
     header("location:input-output-kecamatan.php");
     }
	 
	$query = mysqli_query($connection, "SELECT * FROM kecamatan");	 
	$squery = mysqli_query($connection, "SELECT * FROM kabupaten");	 
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
	<script>
  $( function() {
    $( "#datepicker" ).datepicker(
	{	numberOfMonths: [2,3],
		dateFormat: "yy-mm-dd",
		changeMonth: true,
		changeYear: true,
	}
	);
  } );
  </script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="css/bootstrap3.min.css"> 		
	<link href="css/customgallery.css" rel="stylesheet">
	<link href="css/csscustom.css" rel="stylesheet">	
  </head>
  <body>
   <div class="title container-fluid">
		<h3><b>ENTRI DATA KECAMATAN</b></h3>
   </div>
	
	<div class="col-sm-10">
	<form method="POST" enctype="multipart/form-data">
	  <div class="form-group row">
		<label for="kecamatankode" class="col-sm-4 col-form-label">Kode Kecamatan</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kecamatankode" 
				name="inputkecamatankode" placeholder="Input Kode Kecamatan" maxlength="4" required="">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kecamatannama" class="col-sm-4 col-form-label">Nama Kecamatan</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kecamatannama" 
				name="inputkecamatannama" placeholder="Input Nama Kecamatan">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kecamatanalamat" class="col-sm-4 col-form-label">Alamat Kecamatan</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kecamatanalamat" 
				name="inputkecamatanalamat" placeholder="Input Alamat Kecamatan">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kecamatanketerangan" class="col-sm-4 col-form-label">Keterangan Kecamatan</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kecamatanketerangan" 
				name="inputkecamatanketerangan" placeholder="Input Keterangan Kecamatan">
		</div>
	  </div>	  

	  <div class="form-group row">
		<label for="datepicker" class="col-sm-4 col-form-label">Tanggal Kecamatan Berdiri</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="datepicker" 
				name="inputkecamatanTGL" placeholder="dd-mm-yyyy">
		</div>
	</div>
	
	<div class="form-group row">
		<label for="file" class="col-sm-4 col-form-label">Unggah Foto Kecamatan</label>
		<div class="col-sm-8">
			<input type="file" id="file" name="file">
			<p class="help-block">Atribut untuk unggah foto atau gambar Kecamatan</p>
		</div>
	</div>
		
	  <div class="form-group-row">
		<label for="kecamatanketerangan" class="col-sm-4 col-form-label">Cari Nama Kabupaten</label>
		<div class="col-sm-8">
		<select name="kabupatenkode" class="form-control">
			<option value="kabupaten">Kabupaten</option>
			<?php if(mysqli_num_rows($squery)>0) {?>
			<?php while($row=mysqli_fetch_array($squery)) {?>
				<option>
				<?php echo $row["kabupatenKODE"] ?>
				<?php echo $row["kabupatenNAMA"] ?>
			<?php }?>
			<?php }?>
		</select>
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
		  <th scope="col">Kode Kecamatan</th>
		  <th scope="col">Nama Kecamatan</th>
		  <th scope="col">Alamat Kecamatan</th>
		  <th scope="col">Keterangan Kecamatan</th>
		  <th scope="col">Tanggal Berdiri</th>
		  <th scope="col">Foto Kecamatan</th>
		  <th scope="col">Kode Kabupaten</th>
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
		  <td><?php echo $row["kecamatanKODE"];?></td>
		  <td><?php echo $row["kecamatanNAMA"];?></td>
		  <td><?php echo $row["kecamatanALAMAT"];?></td>
		  <td><?php echo $row["kecamatanKET"];?></td> 
		  <td><?php echo $row["kecamatanTGL"];?></td>
		  <td>
			<?php if($row['kecamatanFOTO']==""){echo "img src='iconfoto/noimage.png' width='90'/>";}else{?>
			<img src="iconfoto/<?php echo $row['kecamatanFOTO'] ?>" width="90" class="img-responsive" />
			<?php }?>
			</td>
		  <td><?php echo $row["kabupatenKODE"];?></td>
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
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="js/scriptdatepicker.js"></script>
  </body>
</html>
<?php include ("adminfooter.php") ?>

