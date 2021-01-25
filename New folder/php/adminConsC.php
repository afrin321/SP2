<?php

    session_start();

	require_once('../service/userService.php');

	if (isset($_POST['all'])) {
		$m = getAllCons();

		if ($m) {
			# code...
		
		$data = "<table>
				<tr>
				    <td>Image</td>
					<td>Id</td>
					<td>Name</td>
					<td>Department</td>
					<td>Phone</td>
					<td>Email</td>
					<td>Address</td>
					<td>DOB</td>
					<td>Qualification</td>
					<td>Experience</td>
				</tr>";

	while ($row = mysqli_fetch_assoc($m)) {
		$data .= "<tr>
		            <td><img src=\"{$row['consPhoto']}\"></td>
					<td>{$row['ConsID']}</td>
					<td>{$row['consName']}</td>
					<td>{$row['consDept']}</td>
					<td>{$row['consPhoneNo']}</td>
					<td>{$row['consEmail']}</td>
					<td>{$row['consAddrs']}</td>
					<td>{$row['consDOB']}</td>
					<td>{$row['consQual']}</td>
					<td>{$row['consExp']}</td>
				</tr>";

	}

	$data .= "</table>";
	

	
	   echo $data;
	}else{
		echo "error 8";
	}

	}

	if (isset($_POST['initialpass'])) {

		if (empty($_POST['id1'])||empty($_POST['initialpass'])) {
			if (empty($_POST['id1'])) {
				echo "id empty";
			}elseif (empty($_POST['initialpass'])) {
				echo "pass empty";
			}elseif ((empty($_POST['id1'])&&empty($_POST['initialpass']))) {
				echo "both";
			}
			
		}else{
			$data = [

				'id'=>$_POST['id1'],
				'pw'=>$_POST['initialpass']
			];

			$status = addPasswordConsultant($data);

			if ($status) {
				echo "success";
			}else{
				echo "error7";
			}
		}
		
	}

	if (isset($_POST['cname'])) {

		$zz = searchCons($_POST['cname']);

		if ($zz) {
			$data = "<table>
				<tr>
				    <td>Image</td>
					<td>Id</td>
					<td>Name</td>
					<td>Department</td>
					<td>Phone</td>
					<td>Email</td>
					<td>Address</td>
					<td>DOB</td>
					<td>Qualification</td>
					<td>Experience</td>
				</tr>";

	while ($row = mysqli_fetch_assoc($zz)) {
		$data .= "<tr>
		            <td><img src=\"{$row['consPhoto']}\"></td>
					<td>{$row['ConsID']}</td>
					<td>{$row['consName']}</td>
					<td>{$row['consDept']}</td>
					<td>{$row['consPhoneNo']}</td>
					<td>{$row['consEmail']}</td>
					<td>{$row['consAddrs']}</td>
					<td>{$row['consDOB']}</td>
					<td>{$row['consQual']}</td>
					<td>{$row['consExp']}</td>
				</tr>";
	}
	$data .= "</table>";

	echo $data;
		}else{
			echo "error 5";
		}
		

		

	}

	if (isset($_POST['pupload'])) {

		//$targetdir = '../db/uploads/';
		//move_uploaded_file($_FILES["cphoto"]["tmp_name"], $targetdir);
		///$targetfilename = $targetdir.basename($_FILES['cphoto']['tmp_name']);
		//$photo = $targetfilename;

		$target_dir = "../db/uploads/";
        $target_file = $target_dir . basename($_FILES["cphoto"]["name"]);

		move_uploaded_file($_FILES["cphoto"]["tmp_name"], $target_file);

		$z = uploadConsPhoto($target_file);

		if($z){
			header('location: ../views/adminConsultants.php?success=true');
		}else{
			echo "error4";
		}
	}

	if(isset($_POST['cid'])){
		$y = getCurrentID();
		if($y){
			echo $y['ConsID'];
		}else{
			echo 'error3';
		}
	}

	if(isset($_POST['name'])){

		//echo "hii";




		//$targetdir = '../db/uploads/';


		$name = $_POST['name'];
		$dept = $_POST['dept'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$address = $_POST['address'];
		$dob = $_POST['dob'];
		$qualification = $_POST['qualification'];
		$exp = $_POST['exp'];
		$avail = $_POST['dayavail'];
		//$photo = $_FILES['photo'];

		if(empty($name)||empty($dept)||empty($phone)||empty($email)||empty($address)||empty($dob)||empty($qualification)||empty($exp)||empty($avail)){
			echo "empty";
		}else{

			//echo "done";

			$data =[
				'name'=>$name,
				'dept'=>$dept,
				'phone'=>$phone,
				'email'=>$email,
				'address'=>$address,
				'dob'=>$dob,
				'qualification'=>$qualification,
				'exp'=>$exp,
				'avail'=>$avail
			];

			//$x = getDeptId($dept);
			//echo $x;

			$status = createConsultantAccount($data);

			if ($status) {
				echo "success";
				//$x = getDeptId($dept);
				//echo $x;
			}else{
				echo "error2";
			}

			//move_uploaded_file($_FILES["photo"]["tmp_name"], $targetdir);
		    //$targetfilename = $targetdir.basename($_FILES['photo']['tmp_name']);
		    //$photo = $targetfilename;

		}





	}

	if(isset($_POST['full_list'])){

		//echo "hii11";

		$x = getAllConsForSlot();

		echo "
		             
		                 <option value=\"\">Select Consultant</option>";

		for ($i=0; $i <count($x) ; $i++) { 
			echo "<option";
			echo " value=\"";
			echo $x[$i]['consName'];
			echo "\" >";
			echo $x[$i]['consName'];
			echo "</option>";
		}

		
		
	}

/* 
$name = $_POST['name'];
	
	$con = mysqli_connect('localhost', 'root', '', 'webtech');
	$sql = "select * from users where username like '%{$name}%'";

	$result = mysqli_query($con, $sql);

	$data = "<table border=1>
				<tr>
					<td>ID</td>
					<td>username</td>
					<td>email</td>
				</tr>";

	while ($row = mysqli_fetch_assoc($result)) {
		$data .= "<tr>
					<td>{$row['id']}</td>
					<td>{$row['username']}</td>
					<td>{$row['email']}</td>
				</tr>";
	}
	$data .= "</table>";
  */


?>