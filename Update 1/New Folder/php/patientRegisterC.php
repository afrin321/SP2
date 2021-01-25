<?php

    session_start();

	require_once('../service/userService.php');

	if (isset($_POST['reg'])) {

		
		if (empty($_POST['fname'])||empty($_POST['sname'])||empty($_POST['email'])||empty($_POST['phone'])||empty($_POST['pw'])||empty($_POST['zip'])||empty($_POST['city'])||empty($_POST['add'])||empty($_POST['dob'])||empty($_POST['gen'])) {
			
			echo "empty";	
			
		}else{
			//echo "ok";
			$y = emailCheck($_POST['email']);

		//	if ($y) {

			$data = [
				'fname'=>$_POST['fname'],
				'sname'=>$_POST['sname'],
				'email'=>$_POST['email'],
				'phone'=>$_POST['phone'],
				'pw'=>$_POST['pw'],
				'zip'=>$_POST['zip'],
				'city'=>$_POST['city'],
				'add'=>$_POST['add'],
				'dob'=>$_POST['dob'],
				'gen'=>$_POST['gen']
			];

			$x = insertPatient($data);

			if ($x) {
				//echo "Added successfully.";
				echo $x;
			}else{
				echo "Unexpected error. Try again later.";
			}
		//}else{
		//	echo "Account already exists with this email!";
		//}
		}
	}



















?>