<!-- ADMIN index -->

<?php 
ob_start();
session_start();
if(!isset($_SESSION['admin_EMAIL']))
{
	header("location:login2.php");
}
	include ("includes/config.php");
	include ("adminmenu.php");
?>
	<div class="jumbotron" style="margin-top: -50px">
		<div class="container text-justify">
			<h2>HALAMAN ADMINSTRATOR</h2>
			<p>HELLO ADMIN!</p>
		</div>
	</div>	<!-- Akhir dari Jumbotron -->
<?php include ("adminfooter.php") ?>

