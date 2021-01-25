<?php 

?>


<!DOCTYPE html>
<html>
<head>
	<title>Departments</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link rel="stylesheet" href="../homestyle.css">
</head>
<body>
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
			<a href="" class="menu">Slots</a>
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
		<h1>Departments</h1>

		<table>
			<tr>
				<td><input type="button" name="" value="View All"></td>
				<td><input type="button" name="" value="Search" onclick="showList()"></td>
			</tr>
			<tr>
				<td id="list1">

				</td>
				<td>
					
				</td>
			</tr>
		</table>

		<div>
			
		</div>


		
	</div>

	<script type="text/javascript">
		document.getElementById('list1').style.display = "none";

		function showList(){

			var xhttp = new XMLHttpRequest();
		 	xhttp.open('POST', '../php/departmentC.php', true);
			xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp.send('full_list='+'true');

			xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('list1').innerHTML = this.responseText;



				}
			}


			


			document.getElementById('list1').style.display = "block";
		}

	</script>

	


</body>
</html>