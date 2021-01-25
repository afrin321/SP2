<?php

    session_start();

	require_once('../service/userService.php');

	if(isset($_POST['full_list'])){

		//echo "hii11";

		$x = getAllConsForSlot();

		echo "
		             
		                 <option value=\"\">Select Consultant</option>";

		for ($i=0; $i <count($x) ; $i++) { 
			echo "<option";
			echo " value=\"";
			echo $x[$i]['ConsID'];
			echo "\"  onclick=\"getInfoByName()\">";
			echo $x[$i]['consName'];
			echo "</option>";
		}

		
		
	}

	if(isset($_POST['full_list2'])){

		//echo "hii11";

		$x = getAllConsForSlot();

		echo "
		             
		                 <option value=\"\">Select Consultant</option>";

		for ($i=0; $i <count($x) ; $i++) { 
			echo "<option";
			echo " value=\"";
			echo $x[$i]['ConsID'];
			echo "\" onclick=\"getInfo()\">";
			echo $x[$i]['ConsID'];
			echo "</option>";
		}

		
		
	}

	if (isset($_POST['id'])) {

		
		class ObjectForInfo
		{
			public $id;
			public $name;
			public $dept;
			
			
		}
		$y = getInfoForSlot($_POST['id']);

		$myObj = new ObjectForInfo();

		if ($y) {
			$myObj->id = $y['ConsID'];
			$myObj->name = $y['consName'];

			$z=getDeptName($y['deptId']);

			if ($z) {
				$myObj->dept = $z['deptName'];
			}else{
				$myObj->dept = '';

			}
            

            $myJSON = json_encode($myObj);
            echo $myJSON;

		}else{
			echo "Not found";
		}

	}

	if (isset($_POST['newslot'])) {

		$data = [
			'id'=>$_POST['id'],
			'day'=>$_POST['day'],
			'start'=>$_POST['start'],
			'end'=>$_POST['end'],
			'max'=>$_POST['max'],
			'p'=>$_POST['p'],
			'loc'=>$_POST['loc']

		];

		$z = addSlot($data);

		if($z){
			echo "Added Successfully";
		}else{
			echo "Error encountered";
		}
		
	}

		


	

?>