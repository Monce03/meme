<?php
ob_start();
session_start();
include"includes/config.php";
if(isset($_SESSION['admin_EMAIL']))
{
	header("location:input-output-kategoriwisata.php");
}

if(isset($_POST['submit_login']))
{
	$namaemail=$_POST["namaemail"];
	$namapassword=$_POST["namapass"];
	$sql_login=mysqli_query($connection,"SELECT * FROM admin2 WHERE NAMAadmin='$namaemail' AND PASSWORDadmin='$namapassword'");
	
	if(mysqli_num_rows($sql_login)>0){
		$row_admin=mysqli_fetch_array($sql_login);
		$_SESSION['admin_KODE']=$row_admin["IDadmin"];
		$_SESSION['admin_EMAIL']=$row_admin["NAMAadmin"];
		header("location:adminINDEX.php");
	}
}
?>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="css/csslogin2.css" rel="stylesheet">

<div class="container">
	<div class="card card-container">
		<img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
		<p id="profile-nama" class="profile-name-card"></p>
		<form class="form-signin" action="login2.php" method="POST">
			<span id="reauth-email" class="reauth-email"></span>
			<input type="email" id="inputEmail" name="namaemail" class="form-control" placeholder="Email address" required autofocus>
			<input type="password" id="inputPassword" name="namapass" class="form-control" placeholder="Password" required autofocus>
			<div id="remember" class="checkbox">
				<label>
					<input type="checkbox" value="remember-me">Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block btn-signin" name="submit_login" type="submit">Sign in</button>
		</form>
		<a href="#" class="forgot-password">Forgot the password?</a>
	</div>
</div>

<?php
mysqli_close($connection);
ob_end_flush();
?>