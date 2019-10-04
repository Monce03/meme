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
		$beritaKODE = $_POST['inputberitaKODE'];					
		$beritaJUDUL= $_POST['inputberitaJUDUL'];
		$kategoriberitaKODE= $_POST['inputkategoriberitaKODE'];
		$kabupatenKODE = $_POST['inputkabupatenKODE'];	
		$beritaISI = $_POST['inputberitaISI'];
		$beritaISI2 = $_POST['inputberitaISI2'];		
		$beritaSUMBER = $_POST['inputberitaSUMBER'];	
		$beritaTGL = $_POST['inputberitaTGL'];					
		$beritaICONFOTO=$_FILES['file']['name'];
		$file_tmp=$_FILES['file']['tmp_name'];
		move_uploaded_file($file_tmp, 'iconberita/'.$beritaICONFOTO);
		

     mysqli_query($connection, "INSERT INTO berita VALUES ('$beritaKODE',
	 '$beritaJUDUL','$kategoriberitaKODE','$kabupatenKODE','$beritaISI','$beritaISI2','$beritaSUMBER','$beritaTGL','$beritaICONFOTO')"); 
     header("location:input-output-detailberita.php");
     }
	 
	$query = mysqli_query($connection, "SELECT * FROM berita");	 
	
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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="css/bootstrap3.min.css"> 		
	<link href="css/customgallery.css" rel="stylesheet">
	<link href="css/csscustom.css" rel="stylesheet">	
  </head>
  <body>
   <div class="title container-fluid">
		<h3><b>ENTRI DATA DETAIL BERITA </b></h3>
   </div>
	
	<div class="col-sm-10">
	<form method="POST" enctype="multipart/form-data">
	  <div class="form-group row">
		<label for="beritaKODE" class="col-sm-4 col-form-label">Kode berita</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="beritaKODE" 
				name="inputberitaKODE" placeholder="Input Kode " maxlength="4" required="">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="beritaJUDUL" class="col-sm-4 col-form-label">Judul berita</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="beritaJUDUL" 
				name="inputberitaJUDUL" placeholder="Input ">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="kategoriberitaKODE" class="col-sm-4 col-form-label">Kategori berita </label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kategoriberitaKODE" 
				name="inputkategoriberitaKODE" placeholder="Input ">
		</div>
	  </div> 
	  <div class="form-group row">
		<label for="kabupatenKODE" class="col-sm-4 col-form-label">Kabupaten kode </label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="kabupatenKODE" 
				name="inputkabupatenKODE" placeholder="Input ">
		</div>
	  </div>
	  <div class="form-group row">
		<label for="beritaISI" class="col-sm-4 col-form-label">Berita isi</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="beritaISI" 
				name="inputberitaISI" placeholder="Input Keterangan">
		</div>
	  </div>	  
 <div class="form-group row">
		<label for="beritaISI2" class="col-sm-4 col-form-label">Berita isi 2</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="beritaISI2" 
				name="inputberitaISI2" placeholder="Input ">
		</div>
	  </div>
	   <div class="form-group row">
		<label for="beritaSUMBER" class="col-sm-4 col-form-label">Sumber</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="beritaSUMBER" 
				name="inputberitaSUMBER" placeholder="Input ">
		</div>
	  </div>
	   <div class="form-group row">
		<label for="beritaTGL" class="col-sm-4 col-form-label">Tanggal</label>
		<div class="col-sm-8">
		  <input type="text" class="form-control" id="beritaTGL" 
				name="inputberitaTGL" placeholder="Input ">
		</div>
	  </div>
		
	
	<div class="form-group row">
		<label for="file" class="col-sm-4 col-form-label">Unggah Foto </label>
		<div class="col-sm-8">
			<input type="file" id="file" name="file">
			<p class="help-block">Atribut untuk unggah foto atau gambar </p>
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
		  <th scope="col">Kode Berita</th>
		  <th scope="col">J</th>
		  <th scope="col">Kategori Berita </th>
		  <th scope="col">Kabupaten Kode</th>
		  <th scope="col">Berita isi 1 </th>
		  <th scope="col">Berita isi 2</th>
		  <th scope="col">Berita Sumber </th>
		  <th scope="col">Berita Tanggal</th>
		  <th scope="col">Foto </th>
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
		  <td><?php echo $row["beritaKODE"];?></td>
		  <td><?php echo $row["beritaJUDUL"];?></td>
		  <td><?php echo $row["kategoriberitaKODE"];?></td> 
		  <td><?php echo $row["kabupatenKODE"];?></td>
		  <td><?php echo $row["beritaISI"];?></td>
		  <td><?php echo $row["beritaISI2"];?></td>
		  <td><?php echo $row["beritaSUMBER"];?></td> 
		  <td><?php echo $row["beritaTGL"];?></td>
		 
		  <td>
			<?php if($row['beritaICONFOTO']==""){echo "img src='iconberita/noimage.png' width='90'/>";}else{?>
			<img src="iconberita/<?php echo $row['beritaICONFOTO'] ?>" width="90" class="img-responsive" />
			<?php }?>
			</td>
	
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

