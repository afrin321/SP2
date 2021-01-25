<!DOCTYPE html>
<html>
<head>
	<title>Patient Portal</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link rel="stylesheet" href="patientLoginStyle.css">
</head>
<body>
	<div>
		<h2>Patient Portal</h2>
		<hr>
		<br>
		<fieldset>
		<form method="post" action="../../php/loginC.php">
			<label>Patient Id</label><br>
			<input type="text" name="" placeholder="Enter Patient Id" id="pid" onclick="clearAll()"> <label id="p1"></label><br>
			<br>
			<label>Password</label><br>
			<input type="password" name="" placeholder="Enter Password" id="ppw" onclick="clearAll()"> <label id="p2"></label>   <a href="#">Forgotten password?</a><br>
			<br>
			<input type="button" name="" value="Login" onclick="login()">  <input type="checkbox" name=""> Remember me. <label id="p3"></label> <br> 
			<br>
			
			<br>
			Do not have an account? <a href="patientRegister.php">Register here.</a>
		</form>
	</fieldset>
	</div>

	<script type="text/javascript">

		function clearAll(){
			document.getElementById('p1').innerHTML = "";
			document.getElementById('p2').innerHTML = "";
		}

		function login(){

			var pid = document.getElementById('pid').value;
			var ppw = document.getElementById('ppw').value;

			if ((pid=='')||(ppw=='')) {
				if (pid=='') {

					document.getElementById('p1').innerHTML = "   Patient Id is missing!"

				}
				if (ppw=='') {

					document.getElementById('p2').innerHTML = "   Password is missing!"

				}
			}else{

				var xhttp = new XMLHttpRequest();
		 	    xhttp.open('POST', '../../php/loginC.php', true);
			    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			    xhttp.send('plogin='+'true'+'&pid='+pid+'&ppw='+ppw);

         	xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){

					if (this.responseText=='true') {

						window.location.assign("patientHome.php");
					}else{

						document.getElementById('p3').innerHTML = '<span style=\"color:red\">   Invalid Patient Id or password. </span>';

					}



															
				}
			}
			}




		}
		
	</script>
	

</body>
</html>