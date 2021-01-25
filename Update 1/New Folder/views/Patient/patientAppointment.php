<!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link rel="stylesheet" href="homestyle.css">
</head>
<body onload="loadItems()">
	<br>
	<br>
	<ul class="menu">
		<li class="menu">
			<a href="patientHome.php" class="menu">Home</a>
		</li>
		<li class="menu">
			<a href="patientAppointment.php" class="menu">Appointments</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Queue Information</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Appointment Log</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Payment</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Settings</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Search </a>  
		</li>
	</ul>

	<div>
		
	</div>

	<div>

		<h1>Select Consultant below:</h1>

		<fieldset>


		<label>Department:  </label> 

		<select id="forDept" onchange="getDetail()">
			<ul>
				<li><option value="no">Not selected</option></li>
			</ul>
			
		</select>

		<br>
		<br>
		

		<label>Consultant: </label>

		<select id="forCons" onchange="getConDetail()">
			<ul>
				<option value="no">Not selected</option></li>
			</ul>
		</select>

		<br>
		<br>

		Search For Consultant: <input type="text" name="" placeholder="Consultant Name">

	</fieldset>

		<p id="see"></p>

		

		<div id="res">
			
		</div>
	

	</div>

	<script type="text/javascript">

		function loadItems(){
			showDept();
			getCons();
		}

		function showDept(){

			var xhttp = new XMLHttpRequest();
		 	xhttp.open('POST', '../../php/appointmentC.php', true);
			xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp.send('dept=true');

			xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('forDept').innerHTML = this.responseText;
				}
			}
		}

		function getCons(){

			var xhttp2 = new XMLHttpRequest();
		 	xhttp2.open('POST', '../../php/appointmentC.php', true);
			xhttp2.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp2.send('allcon=true');

			xhttp2.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('forCons').innerHTML = this.responseText;
				}
			}



		}

		function showCons(){

			var dept = document.getElementById('forDept').value;
			//document.getElementById('see').innerHTML = dept;

			if (dept!=null) {

				var xhttp3 = new XMLHttpRequest();
		 	xhttp3.open('POST', '../../php/appointmentC.php', true);
			xhttp3.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp3.send('all=true&depart='+dept);

			xhttp3.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('forCons').innerHTML = this.responseText;
				}
			}


			}else{
				getCons();
			}		
			
			
		}

		function forDeptInfo(){
			getDetail();
		}

		function getDetail(){

			var d = document.getElementById('forDept').value;
			//document.getElementById('res').innerHTML = d;

			if (d!= 'no') {

			var xhttp4 = new XMLHttpRequest();
		 	xhttp4.open('POST', '../../php/appointmentC.php', true);
			xhttp4.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp4.send('conbydept='+d);

			xhttp4.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('res').innerHTML = this.responseText;
				}
			}
		}


			
		}

		function getConDetail(){

			var id = document.getElementById('forCons').value;

			if (id!='no') {

			var xhttp5 = new XMLHttpRequest();
		 	xhttp5.open('POST', '../../php/appointmentC.php', true);
			xhttp5.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp5.send('conbyid='+id);

			xhttp5.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('res').innerHTML = this.responseText;
				}
			}

		}





		}

		function getAppointmentList(slot_id){


			var xhttp6 = new XMLHttpRequest();
		 	xhttp6.open('POST', '../../php/appointmentC.php', true);
			xhttp6.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp6.send('app_list='+slot_id);

			xhttp6.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('res').innerHTML = this.responseText;
				}
			}


		}

		



		


	</script>

	


</body>
</html>