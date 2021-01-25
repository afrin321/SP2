<?php 

?>


<!DOCTYPE html>
<html>
<head>
	<title>Consultants</title>
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
		<h1>Consultants</h1>

		<table>
			<tr>
				<td><input type="button" name="" value="Add new Account" onclick="addNew()"></td>
				<td><input type="button" name="" value="Search" onclick="search()"></td>
				<td><input type="button" name="" value="View All" onclick="getAll()"></td>
			</tr>
		</table>

		<br><br>

			
	</div>

	<div id="newConsultantAdding">

		<div id="div1">

		<legend>Add new Account</legend>
			<form method="post" enctype="multipart/form-data">
				<table>
					<tr>
						<td>
							Name: <input type="text" name="" id="cname">
						</td>
						<td></td>
					</tr>
					<tr>
						<td id="dlist">
							Department:							
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							Phone No.: <input type="text" id="cphone">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							Email: <input type="email" name="" id="cemail">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							Address: <input type="" name="" id="caddress">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							DOB: <input type="date" name="" id="cdob">
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							Qualification: <input type="text" name="" id="cqual">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							Experience: <input type="text" name="" id="cexp">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							Days available:<input type="text" name="" id="cavail">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="button" name="" value="Add" onclick="add()">
							
						</td>
						<td id="addresult"></td>
					</tr>
					<tr>
						<td><input type="button" name="" value="Next" id="nextbtn1" onclick="next1()"></td>
						<td></td>
					</tr>
				</table>
			</form>

		</div>
		<div id="div2">

		<form>
			<table>
				<tr>
					<td>Consultant Id: <label id="cid"></label></td>
					<td></td>
				</tr>
				<tr>
					<td>Password: <input type="text" name="" value="12345" id="passw"></td>
					<td>  Temporary Password</td>
				</tr>
				<tr>
					<td><input type="button" name="" value="Next" onclick="next2()"></td>
					<td></td>
				</tr>
			</table>
		</form>
		</div>

		<div id="div3">
			<legend><h2>Upload a picture</h2></legend>
		<form method="post" action="../php/adminConsC.php" enctype="multipart/form-data">
			<table>
				<tr>
					<td id="dd">
						<img src="">
					</td>
				</tr>
				<tr>
					<td>
						<input type="file" name="cphoto">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" name="pupload" value="Upload">
					</td>
				</tr>
			</table>
		</form>
		</div>

	</div>

	<div id="openSearch">

		<table>
			<tr>
				<td>
					Search: <input type="text" name="" id="sbox" onkeyup="searchC()">
				</td>
			</tr>
			<tr>
				<td id="res3">
					
				</td>
			</tr>
		</table>
		
	</div>

	<div id="allCons">

		
	</div>


	<div id="accntDets">
		<legend>Account Details</legend>
	</div>

	<script type="text/javascript">
		document.getElementById('accntDets').style.display = "none";
		document.getElementById('newConsultantAdding').style.display = "none";
		document.getElementById('nextbtn1').style.display = "none";
		document.getElementById('div3').style.display = 'none';
		document.getElementById('openSearch').style.display = 'none';
		document.getElementById('allCons').style.display = "none";

		function addNew() {
			document.getElementById('openSearch').style.display = 'none';
			if(document.getElementById('newConsultantAdding').style.display == "none"){
				document.getElementById('newConsultantAdding').style.display = "block";
				document.getElementById('div1').style.display = 'block';
				document.getElementById('div2').style.display = 'none';
				document.getElementById('div3').style.display = 'none';
			    showList();
			}else{
				document.getElementById('newConsultantAdding').style.display = "none";
			}
		}

		function next1(){
			document.getElementById('div1').style.display = 'none';
			document.getElementById('div3').style.display = 'none';
			document.getElementById('div2').style.display = 'block';

			var xhttp3 = new XMLHttpRequest();
		 	xhttp3.open('POST', '../php/adminConsC.php', true);
			xhttp3.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp3.send('cid='+'true');

			xhttp3.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){
					document.getElementById('cid').innerHTML = this.responseText;

					}
					else{
						document.getElementById('cid').innerHTML = 'no';
					}
			}


			//document.getElementById('cid').innerHTML = "";

		}

		function next2(){
			document.getElementById('div2').style.display = 'none';
			document.getElementById('div3').style.display = 'block';

			var pw = document.getElementById('passw').value;
			var id1 = document.getElementById('cid').innerHTML;
			var xhttp6 = new XMLHttpRequest();
		 	xhttp6.open('POST', '../php/adminConsC.php', true);
			xhttp6.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp6.send('initialpass='+pw+'&id1='+id1);


         	xhttp6.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('dd').innerHTML = this.responseText;
					
				}
			}
		}

		function searchC(){

			var cname = document.getElementById('sbox').value;
			var xhttp4 = new XMLHttpRequest();
		 	xhttp4.open('POST', '../php/adminConsC.php', true);
			xhttp4.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp4.send('cname='+cname);


         	xhttp4.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('res3').innerHTML = this.responseText;
					document.getElementById('res3').style.display = 'block';
					
				}
			}
		}

		function add(){
			var name = document.getElementById('cname').value;
			var dept =document.getElementById('dep').value;
			var phoneno = document.getElementById('cphone').value;
			var email = document.getElementById('cemail').value;
			var address = document.getElementById('caddress').value;
			var dob = document.getElementById('cdob').value;
			var qualification = document.getElementById('cqual').value;
			var exp = document.getElementById('cexp').value;
			var dayavail = document.getElementById('cavail').value;
			//var photo = document.getElementById('cphoto').value;

			
			var xhttp2 = new XMLHttpRequest();
		 	xhttp2.open('POST', '../php/adminConsC.php', true);
			xhttp2.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp2.send('name='+name+'&dept='+dept+'&phone='+phoneno+'&email='+email+'&address='+address+'&dob='+dob+'&qualification='+qualification+'&exp='+exp+'&dayavail='+dayavail);

			document.getElementById('addresult').innerHTML = name;


         	xhttp2.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					var res2 = this.responseText;

					//document.getElementById('addresult').innerHTML = this.responseText;



					if(res2=='success'){

						document.getElementById('addresult').innerHTML = this.responseText;
						document.getElementById('nextbtn1').style.display = "block";

						//document.getElementById('div1').style.display = 'none';
						//document.getElementById('div2').style.display = 'block';
					}else{

						document.getElementById('addresult').innerHTML = 'error';

					}

			       //document.getElementById('addresult').innerHTML = this.responseText;

				}
			}

			//var x = 5;


		}

		function showList(){

			var xhttp = new XMLHttpRequest();
		 	xhttp.open('POST', '../php/departmentC.php', true);
			xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp.send('full_list='+'true');

			xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					document.getElementById('dlist').innerHTML = "Department: "+ this.responseText;

				}
			}


			


			//document.getElementById('list1').style.display = "block";
		}

		function search(){

			document.getElementById('newConsultantAdding').style.display = "none";
			document.getElementById('allCons').style.display = "none";
			document.getElementById('res3').style.display = 'none';
			document.getElementById('sbox').value = "";

			if (document.getElementById('openSearch').style.display=='none') {
				document.getElementById('openSearch').style.display = 'block';
			}else{
				document.getElementById('openSearch').style.display = 'none';
			}
		}

		function getAll(){
			document.getElementById('openSearch').style.display = 'none';

			if (document.getElementById('allCons').style.display == "none") {
			document.getElementById('allCons').style.display = "block";

			var xhttp8 = new XMLHttpRequest();
		 	xhttp8.open('POST', '../php/adminConsC.php', true);
			xhttp8.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp8.send('all='+'free');


         	xhttp8.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					$res = this.responseText;

					if ($res!='error 8') {
						document.getElementById('allCons').innerHTML = this.responseText;
					}

					//document.getElementById('allCons').innerHTML = this.responseText;
					
				}
			}
		}else{
			document.getElementById('allCons').style.display = "none";
		}



		}

		

	</script>

	


</body>
</html>