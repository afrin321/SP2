<?php
	session_start();

	require_once('../service/userService.php');

	if(isset($_POST['submit'])){

		$uid = $_POST['uid'];
		$pw = $_POST['pw'];


		if(empty($uid) || empty($pw)){
			echo "empty";
			//header('location: ../views/login.php?error=null');
		}else{

			$user = [
				'uid'=>$uid,
				'pw'=>$pw
			];

			$status = validate($user);

			

			if($status){
				    				
					echo "Successfully found.";
					//header('location: ../views/adminHome.php?error=no');

			}
			else{
				//header('location: ../views/login.php?error=invalid');
				echo "Invalid entry. Account does not exist.";
				//header('location: ../views/adminHome.php?error=no');
			}
		}
		
	}

	if (isset($_POST['plogin'])) {

		if (isset($_POST['pid']) && isset($_POST['ppw'])) {
			$data = [
				'pid'=>$_POST['pid'],
				'ppw'=>$_POST['ppw']
			];

			$x = checkLoginDetail($data);

			if ($x) {

				
				echo "true";
			}else{
				echo "error";
			}


		}
		
		
	}
?>
