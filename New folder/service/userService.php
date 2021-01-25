<?php
	
	require_once('../db/db.php');
	
	/*function getById($id){
		$con = dbConnection();
		$sql = "select * from empinfo where id='{$id}'";
		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);
		return $row;
	}
	
	function getAllUser(){
		$con = dbConnection();
		$sql = "select * from empinfo";
		$result = mysqli_query($con, $sql);
		$users =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($users, $row);
		};
		return $users;
	}

	function getByName($name){
		$con = dbConnection();
		$sql = "select * from empinfo where username like '%{$name}%'";
		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);
		$users =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($users, $row);
		};
		return $users;

	}



		function getByEmpName($name){
		$con = dbConnection();
		$sql = "select * from empinfo where emp_name like '%{$name}%'";
		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);
		$users =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($users, $row);
		};
		return $users;

	}

		function getByCompName($name){
		$con = dbConnection();
		$sql = "select * from empinfo where comp_name like '%{$name}%'";
		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);
		$users =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($users, $row);
		};
		return $users;

	}*/

	function checkLoginDetail($data){
		$con = dbConnection();
		$sql = "select count(patient_Id) from patientreg where patient_Id='{$data['pid']}' and p_pw='{$data['ppw']}'";
		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);
		if ($result) {
			if ($row['count(patient_Id)']>0) {
				return true;
			}else{
				return fale;
			}
		}else{
			return false;
		}


	}

	function insertPatient($data){
		$con = dbConnection();
		$sql = "insert into patientreg values('', '{$data['fname']}', '{$data['sname']}', '{$data['email']}', '{$data['phone']}', '{$data['zip']}', '{$data['city']}', '{$data['add']}', '{$data['dob']}', '{$data['gen']}', '{$data['pw']}', 'false')";
		$result = mysqli_query($con, $sql);
		if ($result) {
			$last_id = mysqli_insert_id($con);
			return $last_id;
		}else{
			return false;
		}
	}

	function emailCheck($email){
		$con = dbConnection();
		$sql = "select count(p_email) from patientreg where p_email='{$email}'";
		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);
		if ($result) {
			if ($row['count(p_email)']>0) {
				return false;
			}else{
				return true;
			}
		}else{
			return false;
		}



	}

	function addToQueue($data){
		$con = dbConnection();
		$sql = "insert into queueinitialize values('', '{$data['date']}', '{$data['id']}', '0', '','Active','','')";
		$result = mysqli_query($con, $sql);
		if ($result) {
			return true;
		}else{
			return false;
		}

	}

	function checkAppointmentExists($data){
		$con = dbConnection();
		$sql = "select count(*) from queueinitialize where queueDate='{$data['date']}' and queueSlotId='{$data['id']}'";

		$result = mysqli_query($con, $sql);
		
		if ($result) {

			$row = mysqli_fetch_assoc($result);

			if ($row['count(*)']>0) {
				return true;
			}else{
				return false;
			}
			
		}else{
			return false;
		}

	}

	function getSlotInfo($id){

		$con = dbConnection();
		$sql = "select slot_id from slot where slot_id='{$id}'";

		$result = mysqli_query($con, $sql);
		
		if ($result) {
			return $result;
		}else{
			return false;
		}

	}

	function getAllSlotInfo($id){

		$con = dbConnection();
		$sql = "select * from slot where slot_id='{$id}'";

		$result = mysqli_query($con, $sql);
		
		if ($result) {
			$row = mysqli_fetch_assoc($result);
			return $row;
		}else{
			return false;
		}

	}

	function getDeptName($id){
		$con = dbConnection();
		$sql = "select deptName from sysdept where deptID='{$id}'";
		$result = mysqli_query($con, $sql);
		
		$row = mysqli_fetch_assoc($result);

		if ($result) {
			return $row;
		}else{
			return false;
		}

	}

	function addSlot($data){
		$con = dbConnection();
		$sql = "insert into slot values('', '{$data['day']}', '{$data['start']}', '{$data['end']}', '{$data['max']}','{$data['loc']}','{$data['p']}','{$data['id']}', 'active')";
		$result = mysqli_query($con, $sql);
		if ($result) {
			return true;
		}else{
			return false;
		}

	}

	function getAllCons(){

		$con = dbConnection();
		$sql = "select * from syscons";
		$result = mysqli_query($con, $sql);
		//$cons =[];
		//while($row = mysqli_fetch_assoc($result)){
		//	array_push($cons, $row);
		//};
		if ($result) {
			return $result;
		}else{
			return false;
		}
	}

	function getInfoForSlot($id){
		$con = dbConnection();
		$sql = "select * from syscons where ConsID
		='{$id}'";
		$result = mysqli_query($con, $sql);

		$row = mysqli_fetch_assoc($result);

		if ($result) {
			return $row;
		}else{
			return false;
		}

	}

	function getInfoForSlotApp($id){
		$con = dbConnection();
		$sql = "select * from slot where slot_consId
		='{$id}'";
		$result = mysqli_query($con, $sql);
        $c =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($c, $row);
		};
		if ($result) {
			return $c;
		}else{
			return false;
		}
		

	}


	function addPasswordConsultant($data){
		$con = dbConnection();
		$sql = "insert into conscredentials values('{$data['id']}', '{$data['pw']}', '{$data['pw']}', 'initial')";
		$result = mysqli_query($con, $sql);

		if ($result) {
			return true;
		}else{
			return false;
		}


	}

	function searchCons($name){
		$con = dbConnection();
		$sql = "select * from syscons where consName like '%{$name}%'";
	    $result = mysqli_query($con, $sql);

	    if($result){
	    	return $result;
	    }else{
	    	return false;
	    }
	}

	function validate ($user){
		$con = dbConnection();
		$sql = "select * from admin_table where adminID='{$user['uid']}' and aPassword='{$user['pw']}'";

		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);

		if(empty($row)){
			return false;
		}

		if(count($row) > 0){
			return true;
		}else{
		    if(empty($row)){
			 return false;
		}
		}
	}

	function getAllDept(){
		$con = dbConnection();
		$sql = "select * from sysdept";
		$result = mysqli_query($con, $sql);
		$department =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($department, $row);
		};
		return $department;
	}

	function getAllConsForSlot(){
		$con = dbConnection();
		$sql = "select * from syscons";
		$result = mysqli_query($con, $sql);
		$c =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($c, $row);
		};
		return $c;
	}

	function getAllConsByDept($name){
		$con = dbConnection();
		$sql = "select * from syscons where deptID in (select deptID from sysdept where deptName='{$name}')";
		$result = mysqli_query($con, $sql);
		$c =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($c, $row);
		};
		return $c;
	}

	function getDeptId($name){
		$con = dbConnection();
		$sql = "select deptID from sysdept where deptName='{$name}'";
		$result = mysqli_query($con, $sql);
		$dept1 =[];
		while($row = mysqli_fetch_assoc($result)){
			array_push($dept1, $row);
		};

		if ($result) {
			return $dept1['0']['deptID'];
		}else{
			return false;
		}
		

	}

	function uploadConsPhoto($data){
		$con = dbConnection();
		$sql = "update syscons set consPhoto='{$data}' where consID=(select max(ConsID) from syscons)";
		$result = mysqli_query($con, $sql);
		if ($result) {
			return true;
		}else{
			return false;
		}
	}

	function getCurrentID(){
		$con = dbConnection();
		//$sql = "select ConsID from syscons where ConsID=(select max(ConsID) from syscons)";
		$sql = "select ConsID from syscons where ConsID=(select max(ConsID) from syscons)";
		$result = mysqli_query($con, $sql);
		$id =[];
		$row = mysqli_fetch_assoc($result);
		if ($result) {
			return $row;
		}else{
			return "error";
		}

	}

	

	function createConsultantAccount($data){
		$con = dbConnection();

		$did = getDeptId($data['dept']);
		
		$sql = "insert into syscons values( '', '{$data['name']}', '{$data['dept']}', '{$data['phone']}', '{$data['email']}', '{$data['address']}', '{$data['dob']}', '{$data['qualification']}', '{$data['exp']}', '{$data['avail']}', '', '{$did}', '', '')";


		if(mysqli_query($con, $sql)){
			return true;
		}else{
			return false;
		}

	}
/*
	function adminCheck ($user){
		$con = dbConnection();
		$sql = "select * from empinfo where username='{$user['username']}' and password='{$user['password']}' and type='admin'";

		$result = mysqli_query($con, $sql);
		$row = mysqli_fetch_assoc($result);

		if(count($row) > 0){
			return true;
		}else{
			return false;
		}

	}

	function create($user){
		$con = dbConnection();
		//$check = "select COUNT(email) from users where email={$user['email']}";

		$sql = "insert into empinfo values( '', '{$user['empname']}' ,'{$user['compname']}' ,'{$user['contno']}', '{$user['username']}', '{$user['password']}', 'employee')";


		if(mysqli_query($con, $sql)){
			return true;
		}else{
			return false;
		}
	}

	function createjob($user){
		$con = dbConnection();
		//$check = "select COUNT(email) from users where email={$user['email']}";

		$sql = "insert into jobs values( '', '{$user['cname']}' ,'{$user['title']}' ,'{$user['location']}', '{$user['salary']})";


		if(mysqli_query($con, $sql)){
			return true;
		}else{
			return false;
		}
	}

	function update($user){
		$con = dbConnection();
		$sql = "update empinfo set emp_name='{$user['empname']}', comp_name='{$user['compname']}', contactno='{$user['contno']}', username='{$user['username']}', password='{$user['password']}' where id={$user['id']}";

		if(mysqli_query($con, $sql)){
			return true;
		}else{
			return false;
		}
	}

		function delete($user){
		$con = dbConnection();
		$sql = "delete from empinfo set where id={$user['id']}";

		if(mysqli_query($con, $sql)){
			return true;
		}else{
			return false;
		}
	}*/

?>