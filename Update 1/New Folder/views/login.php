<!DOCTYPE html>
<html>
<head>
	<title>Login page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
</head>
<body>


	<h1>Login page</h1>

	<form action="../php/loginC.php" method="post">
		<fieldset>
			<legend>Login</legend>
			<table>
				<tr>
					<td>User Id</td>
					<td><input type="text" id="uid" ></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" id="pw"></td>
				</tr>
				<tr>
					<td><input type="button" name="submit" value="Login" onclick="checkAccnt()"></td>
					<td id=stat>  </td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>

<script type="text/javascript">

	function checkAccnt(){

		var uid = document.getElementById('uid').value;
		var pw = document.getElementById('pw').value;


		 	var xhttp = new XMLHttpRequest();
		 	xhttp.open('POST', '../php/loginC.php', true);
			xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xhttp.send('submit='+'true'+'&uid='+uid+'&pw='+pw);

			//document.getElementById('data').innerHTML = this.statusText;

			

			xhttp.onreadystatechange = function(){
				if(this.readyState == 4 && this.status == 200){
					//document.getElementById('data').style.display = "block";

					//document.getElementById('stat').innerHTML =  this.responseText;

					res = this.responseText;

					if((res=='Invalid entry. Account does not exist.')||(res=='empty')){

						document.getElementById('stat').innerHTML =  res;
					
					}else{
						location.replace("../views/adminHome.php?error=no");
					}



				}
			}
	}




	
</script>
</html>