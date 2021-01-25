<?php
	session_start();

	require_once('../service/userService.php');

	if(isset($_POST['full_list'])){

		//echo "hii11";

		$x = getAllDept();

		echo "<select id=\"dep\">
		             <ul>
		                 <option value=\"\">Select Department</option>";

		for ($i=0; $i <count($x) ; $i++) { 
			echo "<option";
			echo " value=\"";
			echo $x[$i]['deptName'];
			echo "\" >";
			echo $x[$i]['deptName'];
			echo "</option>";
		}

		echo "</select>";
		
	}
?>




