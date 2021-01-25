<!DOCTYPE html>
<html>
<head>
	<title>Patient Registration Portal</title>
	<link rel="stylesheet" href="patientLoginStyle.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	
</head>
<body>
	
		<div class="title1"><h1>   Patient Portal</h1></div>

		<hr>
		<div class="div1" id="div1">
		<br>
		<fieldset>
			<div class="title2"><h1>    Registration</h1></div>
		<form method="post">

			<table>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>First Name</label></td>
					<td></td>
					<td><label>Sur Name</label><br></td>
					<td></td>
				</tr>
				<tr>
					<td><label><input type="text" name="" placeholder="First name" id="pfname"><br></label></td>
					<td></td>
					<td><label><input type="text" name="" placeholder="Sur name" id="psname"></label><br></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Email Address</label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label><input type="email" name="" placeholder="Email Address" id="pemail"></label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Phone Number</label></td>
					<td></td>
					<td><label>Zip Code</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label><input type="text" name="" placeholder="Phone No."  id="pphone"></label></td>
					<td></td>
					<td><label><input type="text" name="" placeholder="Zip Code" id="pzcode"></label></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label><input type="password" name="" placeholder="Password" id="ppw"></label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Date of Birth</label></td>
					<td></td>
					<td><label>City</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label><input type="date" name="" id="pdate"></label> (mm/dd/yyyy) </td>
					<td></td>
					<td><label><select placeholder="City" id="pcity"><ul><option value=""></option><option value="Dhaka">Dhaka</option><option value="Chittagong">Chittagong</option><option value="Khulna">Khulna</option><option value="Barisal">Barisal</option><option value="Sylhet">Sylhet</option><option value="Rajshahi">Rajshahi</option><option value="">Rangamati</option></ul></select></label></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Gender</label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label><input type="radio" name="gender" value="male" > Male  <input type="radio" name="gender" value="female" > Female  <input type="radio" name="gender" value="other"> Other</label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Address</label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label><textarea name="" placeholder="Address" rows="4" cols="35" id="padd"></textarea></label></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Already have an account?  <a href="#">Login here.</a></label></td>
					<td>				
					</td>
					<td id="res"></td>
					<td><label><input type="button" name="" value="Register" class="button1" onclick="register()"></label><label><input type="reset" name="" value="Reset" class="button1"></label></td>
				</tr>


			</table>
			
			
			
			


		</form>
	</fieldset>
	</div>
	<div  id="div2" class="div1">
		<fieldset>
			<h1>Patient Login Details</h1>
			<h3>Account successfully created. Please save login details.</h3>
			<br>
			<br>
			<label>Patient Id:</label><label id="pid"></label>
			<br>
			<br>
			<label>Password:</label><label id="passw"></label>
			<br>
			<br>
			<label><input type="button" name="" value="Login" class="button1" onclick="login()"></label>
		</fieldset>
	</div>
	<div>
		<br>
			<br>
		<p align="center"><span color="white">
			


		Copyright@2021</span>


	</p>
	</div>
	<script type="text/javascript">
		document.getElementById('div2').style.display = "none";
		//<link rel="stylesheet" href="patientLoginStyle.css">

		function validate(){
			
		}

		function register(){

			var fname = document.getElementById('pfname').value;
		    var sname = document.getElementById('psname').value;
		    var email = document.getElementById('pemail').value; 
		    var phone = document.getElementById('pphone').value;
		    var pw = document.getElementById('ppw').value;
		    var zip = document.getElementById('pzcode').value;
		    var city = document.getElementById('pcity').value;
		    var add = document.getElementById('padd').value;
		    var dob = document.getElementById('pdate').value;
		    var gen;

		    var ele = document.getElementsByName('gender'); 
              
            for(i = 0; i < ele.length; i++) { 
                if(ele[i].checked) 
                gen = ele[i].value; 
            } 


			var xhttp = new XMLHttpRequest();
		 	xhttp.open('POST', '../../php/patientRegisterC.php', true);
			xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp.send('reg='+'true'+'&fname='+fname+'&sname='+sname+'&email='+email+'&phone='+phone+'&pw='+pw+'&zip='+zip+'&city='+city+'&add='+add+'&dob='+dob+'&gen='+gen);

         	xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					if (this.responseText!="Unexpected error. Try again later" || this.responseText!="error") {
						document.getElementById('div1').style.display = "none";
						document.getElementById('div2').style.display = "block";
						document.getElementById('pid').innerHTML = this.responseText;
						document.getElementById('passw').innerHTML = pw;
					}else{

					document.getElementById('res').innerHTML = this.responseText;

				}

										
				}
			}

		}

		function login(){
			window.location.assign("patientLogin.php");
		}
	</script>
	

</body>
</html>