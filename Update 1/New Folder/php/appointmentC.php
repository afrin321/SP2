<?php

    session_start();

	require_once('../service/userService.php');

	if (isset($_POST['dept'])) {

		$x = getAllDept();

		echo "<select id=\"forDept\" onchange=\"getDetail()\">
		             <ul>
		                 <li><option value=\"no\">Not selected</option></li>";

		for ($i=0; $i <count($x) ; $i++) { 
			echo "<li><option";
			echo " value=\"";
			echo $x[$i]['deptName'];
			echo "\" onclick=\"showCons()\">";
			echo $x[$i]['deptName'];
			echo "</option></li>";
		}

		echo "</ul></select>";
		
	}

	if (isset($_POST['allcon'])) {

		$x = getAllConsForSlot();

		echo "<select id=\"forCons\">
		            <ul>
		                <li><option value=\"no\" onchange=\"getConDetail()\">Not selected</option></li>";

		for ($i=0; $i <count($x) ; $i++) { 
			echo "<li><option";
			echo " value=\"";
			echo $x[$i]['ConsID'];
			echo "\" >";
			echo $x[$i]['consName'];
			echo "</option></li>";
		}

		echo "</ul></select>";    
		
	}

	if (isset($_POST['depart'])) {
		
		

		$y = getAllConsByDept($_POST['depart']);

		echo "<select id=\"forCons\" onchange=\"getConDetail()\">
		            <ul>
		                <li><option value=\"no\">Not selected</option></li>";

		for ($i=0; $i <count($y) ; $i++) { 
			echo "<li><option";
			echo " value=\"";
			echo $y[$i]['ConsID'];
			echo "\" >";
			echo $y[$i]['consName'];
			echo "</option></li>";
		}

		echo "</ul></select>";    
		
	
	}

	if (isset($_POST['conbydept'])) {

		$y = getAllConsByDept($_POST['conbydept']);

		if ($y) {
			
		for ($i=0; $i <count($y) ; $i++) { 
			
			echo "<fieldset>";
			echo "Name:  ".$y[$i]['consName'];
			echo "<br><br> ";
			echo "Department: ".$_POST['conbydept'];
			echo "<br>";
			echo "<br>";
			echo "Slots:";
			echo "<br>";
			
			$z  = getInfoForSlotApp($y[$i]['ConsID']);
			if ($z) {
				for ($j=0; $j <count($z) ; $j++){
					echo ucfirst($z[$j]['slot_day']).": ".date("g:i a", strtotime($z[$j]['slot_start_time']))." - ".date("g:i a", strtotime($z[$j]['slot_end_time']));
					echo "<br>";
			        echo "<br>";
					echo "<input type=\"button\" name=\"\" value=\"View Schedule\" onclick=\"getAppointmentList(".$z[$j]['slot_id'].")\">";
					echo "<br>";
					
					
					echo "<br>";
				}
			}else{
				echo "No slots assigned yet";
			}

			        




			echo "</fieldset>";

			
		}}else{
		echo "error";
	}

		
	}

	if (isset($_POST['conbyid'])) {
		//echo $_POST['conbyid'];
		$v = getInfoForSlot($_POST['conbyid']);

		if($v){

			echo "<fieldset>";
			echo "Name:  ".ucfirst($v['consName']);
			echo "<br><br> ";

			$w = getDeptName($v['deptId']);
			if ($w) {
				echo "Department:  ".$w['deptName'];
			}
			echo "<br>";
			echo "<br>";
			echo "Slots:";
			echo "<br><br>";

			$z  = getInfoForSlotApp($v['ConsID']);

			if ($z) {
				for ($j=0; $j <count($z) ; $j++){
					echo ucfirst($z[$j]['slot_day']).": ".date("g:i a", strtotime($z[$j]['slot_start_time']))." - ".date("g:i a", strtotime($z[$j]['slot_end_time']));
					echo "<br>";
					echo "<br>";
			        
					echo "<input type=\"button\" name=\"\" value=\"View Schedule\" onclick=\"getAppointmentList(".$z[$j]['slot_id'].")\">";
					echo "<br>";
					echo "<br>";
				}
			}else{
				echo "<br>";
					echo "<br>";
				echo "No slots assigned yet";
			}

			echo "</fieldset>";

		}else{
			echo "Will be updated soon.";
		}
	}

	if (isset($_POST['app_list'])) {

		$sid = $_POST['app_list'];

		//echo $_POST['app_list'];
		
		$l1 = getAllSlotInfo($_POST['app_list']); //This brings slot info by slot id

		if ($l1) {

			//int_r($l1);
			//echo ucfirst($l1['slot_day']);


			//echo "    ";

			$t = time();
			//echo(date("d-m-Y",$t));

			$tempDate = date("d-m-Y",$t);
			//echo "    ";
			$t2 = date('l', strtotime($tempDate));
			//echo $t2;
			//ow = mysqli_fetch_assoc($l1);/*
			if ($t2==ucfirst($l1['slot_day'])) {
				
				$Date1 = $tempDate;

				for ($i=0; $i < 4; $i++) { 
					# code...
				
				
				while (date('l', strtotime($Date1))!=ucfirst($l1['slot_day'])) {
					$Date1 = date('d-m-Y', strtotime($Date1 . " + 1 day"));
				}

				if (isset($month1)) {
					if ($month1!=date("F", strtotime($Date1))) {

						$month1 = date("F", strtotime($Date1));
						$year1 = date("o", strtotime($Date1));
				        echo "<h3>".$month1." ".$year1."</h3>";				

					}
				}else{

					$month1 = date("F", strtotime($Date1));
				    $year1 = date("o", strtotime($Date1));
				    echo "<h3>".$month1." ".$year1."</h3>";

				}

				//echo $Date1;
				$Date1 = date('Y-m-d',strtotime($Date1));

				$data = [

					'date'=>$Date1,
					'id'=>$_POST['app_list']

				];

				$e = checkAppointmentExists($data);

				if ($e){
					//echo "exist";
					echo "<fieldset>";
					echo "Date: ";
					$Date1 = date('d-m-Y',strtotime($Date1));
					echo $Date1;
					echo "<br><br>";
					$day1 = date('l', strtotime($Date1));
					echo ucfirst($day1);
					echo "<br><br>";
					echo "<input type=\"button\" value=\"Make Appointment\">";
					echo "</fieldset>";
					echo "<br><br>";

					$Date1 = date('d-m-Y', strtotime($Date1 . " + 1 day"));
				}else{
					//echo "does not exist";
					$f = addToQueue($data);
					if ($f){
						//echo "yes";
					//echo "exist";
					//echo "exist";
					echo "<fieldset>";
					echo "Date: ";
					$Date1 = date('d-m-Y',strtotime($Date1));
					echo $Date1;
					echo "<br><br>";
					$day1 = date('l', strtotime($Date1));
					echo ucfirst($day1);
					echo "<br><br>";
					echo "<input type=\"button\" value=\"Make Appointment\">";
					echo "</fieldset>";
					echo "<br><br>";
					}else{
						echo "no";
					}

					$Date1 = date('d-m-Y', strtotime($Date1 . " + 1 day"));

				}


				}
			}else{



				$Date1 = $tempDate;

				for ($i=0; $i < 8; $i++) { 
					# code...
				
				
				while (date('l', strtotime($Date1))!=ucfirst($l1['slot_day'])) {
					$Date1 = date('d-m-Y', strtotime($Date1 . " + 1 day"));

				}

				if (isset($month1)) {
					if ($month1!=date("F", strtotime($Date1))) {

						$month1 = date("F", strtotime($Date1));
						$year1 = date("o", strtotime($Date1));
				        echo "<h3>".$month1." ".$year1."</h3>";				

					}
				}else{

					$month1 = date("F", strtotime($Date1));
				    $year1 = date("o", strtotime($Date1));
				    echo "<h3>".$month1." ".$year1."</h3>";

				}

				

				//echo $Date1;
				$Date1 = date('Y-m-d',strtotime($Date1));
				

				//echo $month1;

				$data = [

					'date'=>$Date1,
					'id'=>$_POST['app_list']

				];

				$e = checkAppointmentExists($data);

				if ($e){
					//echo "exist";
					echo "<fieldset>";
					echo "Date: ";
					$Date1 = date('d-m-Y',strtotime($Date1));
					//echo $Date1;
					echo "<label id=\""."date".$i."\">".	$Date1."</label>";
					echo "<br><br>";
					$day1 = date('l', strtotime($Date1));
					//echo ucfirst($day1);
					echo "<label id=\""."day".$i."\">".ucfirst($day1)."</label>";
					echo "<br><br>";
					echo "<input type=\"button\" value=\"Make Appointment\" onclick=\"makeAppointment(".$i.",".$sid.")\">";
					echo "</fieldset>";
					echo "<br><br>";

					$Date1 = date('d-m-Y', strtotime($Date1 . " + 1 day"));
				}else{
					//echo "does not exist";
					$f = addToQueue($data);
					if ($f){
						//echo "yes";
					//echo "exist";
					//echo "exist";
					echo "<fieldset>";
					echo "Date: ";
					$Date1 = date('d-m-Y',strtotime($Date1));
					echo "<label id=\""."date".$i."\">".	$Date1."</label>";
					echo "<br><br>";
					$day1 = date('l', strtotime($Date1));
					echo "<label id=\""."day".$i."\">".ucfirst($day1)."</label>";
					echo "<br><br>";
					echo "<input type=\"button\" value=\"Make Appointment\" onclick=\"makeAppointment(".$i.",".$sid.")\">";
					echo "</fieldset>";
					echo "<br><br>";
					}else{
						echo "no";
					}

					$Date1 = date('d-m-Y', strtotime($Date1 . " + 1 day"));

				}


				};
			}
            
			
		}else{
			echo "error";
		}

		
	}

	

	

	







?>