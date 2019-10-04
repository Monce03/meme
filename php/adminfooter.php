<?php 
ob_start();
if(!isset($_SESSION['admin_EMAIL']))
{
	header("location:login2.php");
}
?>
</div> <!-- penutup affix-content -->

</div> <!-- penutup row affix-row -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

