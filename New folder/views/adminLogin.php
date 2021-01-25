<?php 

 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>Admin login</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
 </head>
 <body>
 	<div bgcolor="#1ECBE1">
 		<h1>Admin Login Page</h1>




 		
 	</div>

 	<div bgcolor="snow">

 	<form action="../../New folder/php/adminLoginController.php" method="post">
 		<table align="center" border="1" bgcolor="#1ECBE1" width="300">
 			<tr>
 				<td>
 					User ID/Email:
 				</td>
 				<td>
 					<input type="text" name="aid"><br>
 				</td>
 			</tr>
 			<tr>
 				<td>
 					Password:
 				</td>
 				<td>
 					<input type="password" name="apass"><br>
 				</td>
 			</tr>
 			<tr>
 				<td>
 					<input type="submit" name="submit" value="Sign In">
 				</td>
 				<td>
 					<a href="#">Forgot Password?</a>
 				</td>
 			</tr>
 			
 		</table>
 	</form>

 </div>
 <div></div>
 </body>
 </html>