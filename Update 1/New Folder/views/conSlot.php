<?php 

?>


<!DOCTYPE html>
<html>
<head>
	<title>Slots</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link rel="stylesheet" href="../homestyle.css">
</head>
<body onload="getList()">
	<br>
	<br>
	<ul class="menu">
		<li class="menu">
			<a href="adminHome.php" class="menu">Home</a>
		</li>
		<li class="menu">
			<a href="adminDept.php" class="menu">Departments</a>
		</li>
		<li class="menu">
			<a href="adminConsultants.php" class="menu">Consultants</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Patient Info</a>
		</li>
		<li class="menu">
			<a href="conSlot.php" class="menu">Slots</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Employees</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Settings</a>
		</li>
		<li class="menu">
			<a href="" class="menu">Search </a>  
		</li>
	</ul>

	<div>
		<br>
		<h1>Slots</h1>
	</div>

	<div>
		<table>
			<tr>
				<td>
					Search by Name: 
				</td>
				<td>
					<select id="list1"><ul>
						
					</ul></select> 
				</td>
			</tr>
			<tr>
				<td>
					Search by Id:
				</td>
				<td>
					<select id="list2">
						<ul>
							
						</ul>
					</select>
				</td>
			</tr>
		</table>
	</div>

	<div>

		<h2>Add Slots</h2>
		<table>
			<tr>
				<td>Name:  <label id="conName"></label></td>
				<td>Id:   <label id="conId"></label></td>
			</tr>
			<tr>
				<td>Department:   <label id="conDept"></label></td>
				<td></td>
			</tr>
			<tr>
				<td>
					Day:  
				</td>
				<td>
					<select id="day">
						<ul>
							<li><option value="">Select Day</option></li>
							<li><option value="sunday">Sunday</option></li>
							<li><option value="monday">Monday</option></li>
							<li><option value="tuesday">Tuesday</option></li>
							<li><option value="wednesday">Wednesday</option></li>
							<li><option value="thursday">Thursday</option></li>
							<li><option value="friday">Friday</option></li>
							<li><option value="saturday">Saturday</option></li>
						</ul>
					</select>
				</td>
			</tr><br>
			<tr>
				<td>Select Hours:</td>
				<td><select id="hour">
					<ul>
						<li>
							<option value="">Select Hours</option>
							<option value="3" onclick="getTime()">3</option>
							<option value="4" onclick="getTime()">4</option>
							<option value="5" onclick="getTime()">5</option>
							<option value="6" onclick="getTime()">6</option>
							<option value="7" onclick="getTime()">7</option>
							<option value="8" onclick="getTime()">8</option>
						</li>
					</ul>
				</select></td>
			</tr>
			<tr>
				<td></td><td>Start Time: <input type="time" name="" id="start_time">  End Time: <input type="time" name="" id="end_time">  (Hh:Mm:Am/Pm)</td>
			</tr>
			<tr>
				<td>Max allowed:</td>
				<td><input type="number" name="" placeholder="1" id="maxval"> <input type="checkbox" name="" id="permission"> Allow Consultant to change this.</td>
			</tr>
			<tr>
				<td>Existing Slots: </td>
				<td></td>
			</tr>
			<tr>
				<td>Location/Room:</td>
				<td><input type="text" name="" placeholder="floor/room no." id="loc"></td>
			</tr>
			<tr>
				<td><input type="button" name="" value="Add Slot" onclick="addSlot()"></td>
				<td id="result"></td>
			</tr>
		</table>


		
	</div>

			
	<script type="text/javascript">

		function getList(){
			showList();
			showListForId();
		}


		function showList(){

			var xhttp = new XMLHttpRequest();
		 	xhttp.open('POST', '../php/slotC.php', true);
			xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp.send('full_list2='+'true');

			xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('list2').innerHTML = this.responseText;



				}
			}


			document.getElementById('list2').style.display = "block";
		}

		function showListForId(){

			var xhttp = new XMLHttpRequest();
		 	xhttp.open('POST', '../php/slotC.php', true);
			xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp.send('full_list='+'true');

			xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('list1').innerHTML = this.responseText;



				}
			}


			document.getElementById('list1').style.display = "block";
		}

		function getInfo(){

			var id = document.getElementById('list2').value;
			//var id2 = document.getElementById('list1').value;

			var xhttp2 = new XMLHttpRequest();
		 	xhttp2.open('POST', '../php/slotC.php', true);
			xhttp2.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');//Content-type: text/plain; charset=iso-8859-1
			xhttp2.send('id='+id);

			xhttp2.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					var res = this.responseText;
					

					

					document.getElementById("conId").innerHTML = this.responseText;

					//var myStr = JSON.stringify(res);			

					var myObj = JSON.parse(this.responseText);


					document.getElementById("conId").innerHTML = myObj.id;
                    document.getElementById("conName").innerHTML = myObj.name;
                    document.getElementById("conDept").innerHTML = myObj.dept;

                



				}
			}



			
		}

		function getInfoByName(){
			//var id = document.getElementById('list2').value;
			var id = document.getElementById('list1').value;

			var xhttp3 = new XMLHttpRequest();
		 	xhttp3.open('POST', '../php/slotC.php', true);
			xhttp3.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');//Content-type: text/plain; charset=iso-8859-1
			xhttp3.send('id='+id);

			xhttp3.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					var res = this.responseText;
					

					

					document.getElementById("conId").innerHTML = this.responseText;

					//var myStr = JSON.stringify(res);			

					var myObj = JSON.parse(this.responseText);


					document.getElementById("conId").innerHTML = myObj.id;
                    document.getElementById("conName").innerHTML = myObj.name;
                    document.getElementById("conDept").innerHTML = myObj.dept;

                



				}
			}

		}

		function getTime(){

			if (document.getElementById('hour').value=='3') {
			document.getElementById('time').innerHTML = "<ul><li><option value=\"\">Select Time</option></li><li><option value=\"8:00am-11:00am\">8:00am-11:00am</option></li><li><option value=\"9:00am-12:00pm\">9:00am-12:00pm</option></li><li><option value=\"10:00am-1:00pm\">10:00am-1:00pm</option></li><li><option value=\"1:00am-3:00pm\">1:00am-3:00pm</option></li><li><option value=\"3:00pm-6:00pm\">3:00pm-6:00pm</option></li><li><option value=\"4:00pm-7:00pm\">4:00pm-7:00pm</option></li><li><option value=\"5:00pm-8:00pm\">5:00pm-8:00pm</option></li><li><option value=\"6:00pm-9:00pm\">6:00pm-9:00pm</option></li><li><option value=\"7:00pm-10:00pm\">7:00pm-10:00pm</option></li></ul>";
		}

		if (document.getElementById('hour').value=='4') {
			document.getElementById('time').innerHTML = "<ul><li><option value=\"\">Select Time</option></li><li><option value=\"8:00am-12:00pm\">8:00am-12:00pm</option></li><li><option value=\"9:00am-1:00pm\">9:00am-1:00pm</option></li><li><option value=\"10:00am-2:00pm\">10:00am-2:00pm</option></li><li><option value=\"3:00pm-7:00pm\">3:00pm-7:00pm</option></li><li><option value=\"4:00pm-8:00pm\">4:00pm-8:00pm</option></li><li><option value=\"5:00pm-9:00pm\">5:00pm-9:00pm</option></li><li><option value=\"6:00pm-10:00pm\">6:00pm-10:00pm</option></li></ul>";
		}

		if (document.getElementById('hour').value=='5') {
			document.getElementById('time').innerHTML = "<ul><li><option value=\"\">Select Time</option></li><li><option value=\"8:00am-12:00pm\">8:00am-12:00pm</option></li><li><option value=\"9:00am-1:00pm\">9:00am-1:00pm</option></li><li><option value=\"10:00am-2:00pm\">10:00am-2:00pm</option></li><li><option value=\"3:00pm-7:00pm\">3:00pm-7:00pm</option></li><li><option value=\"4:00pm-8:00pm\">4:00pm-8:00pm</option></li><li><option value=\"5:00pm-9:00pm\">5:00pm-9:00pm</option></li><li><option value=\"6:00pm-10:00pm\">6:00pm-10:00pm</option></li></ul>";
		}

		/*
					<tr>
				<td>Time:  </td>
				<td>
					<select id="time">
						<ul>
							<li>
								<option>
									Select Time
								</option>
							</li>
						</ul>
						
					</select>
				</td>
			</tr>
		*/

		}

		function addSlot(){
			var id = document.getElementById('conId').innerHTML;
			var day = document.getElementById('day').value;
			var start = document.getElementById('start_time').value;
			var end = document.getElementById('end_time').value;
			var max = document.getElementById('maxval').value;
			var loc = document.getElementById('loc').value;
			var p ="";
		if(document.getElementById('permission').checked == true){

			p='true';

		}else{
			p='false';
		}

			if (id==""||day==""||start==""||end==""||max==""||loc=="") {
				document.getElementById('result').innerHTML = "<span color=\"red\">Input is missing</span>";
			}else{
				//document.getElementById('result').innerHTML = "<span color=\"red\">Added Succesfully</span>";

			var xhttp4 = new XMLHttpRequest();
		 	xhttp4.open('POST', '../php/slotC.php', true);
			xhttp4.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp4.send('newslot='+'true'+'&id='+id+'&day='+day+'&start='+start+'&end='+end+'&max='+max+'&loc='+loc+'&p='+p);

			xhttp4.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('result').innerHTML = "<span color=\"red\">Added Succesfully</span>";	

				}
			}

			}
		}



	</script>





	


</body>
</html>