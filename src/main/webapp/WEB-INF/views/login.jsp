<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link  rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Atma:wght@500&display=swap">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/common.css" type="text/css">
	<link rel="stylesheet" href="assets/css/login.css" type="text/css">
</head>
<body>
	<!-- join modal -->
	<div class="modal fade" id="modal-join">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
 					<h2 class="modal-title">Welcom To NextLine.</h2>
 				</div>
				<form id="form-join" class="form-horizontal">
					<div class="modal-body">
						<div class="form-group">
							<!-- e-mail -->
							<label for="email" class="col-xs-3 control-label">e-mail</label>
							<div class="col-xs-6"><input type="email" class="form-control" name="email" placeholder="e-mail"></div>
							<!-- id dupl chk -->
							<button type="button" class="btn btn-info" onclick="emailDuplCheck();">Dupl Check</button>
						</div>
						<br>
						<div class="form-group">
							<!-- pw -->
							<label for="password" class="col-xs-3 control-label">Password</label>
							<div class="col-xs-6"><input type="password" class="form-control" name="password" placeholder="Password"></div>
						</div>
						<div class="form-group">
							<!-- pw chk -->
							<label for="passwordChk" class="col-xs-3 control-label">Password Check</label>
							<div class="col-xs-6"><input type="password" class="form-control" name="passwordChk" placeholder="Password Check"></div>
						</div>
						<br>
						<div class="form-group">
							<!-- name -->
							<label for="name" class="col-xs-3 control-label">Name</label>
							<div class="col-xs-6"><input type="text" class="form-control" name="name" placeholder="Name"></div>
						</div>
						<div class="form-group">
							<!-- gender -->
							<label for="gender" class="col-xs-3 control-label">Gender</label>	
							<div class="radio">
								<label for="man" class="col-xs-offset-1">
									<input type="radio" name="gender" value="m" checked>Man
						  		</label>
								<label for="woman" class="col-xs-offset-1">
									<input type="radio" name="gender" value="w">Woman
						  		</label>
							</div>
						</div>
						<div class="form-group">
							<!-- birthdate -->
							<label for="birthdate" class="col-xs-3 control-label">Birthdate</label>
							<div class="col-xs-6"><input type="date" class="form-control" name="birthdate" placeholder="Birthdate"></div>
						</div>
						<div class="form-group">
							<!-- motto -->
							<label for="motto" class="col-xs-3 control-label">Motto</label>
							<div class="col-xs-6"><input type="text" class="form-control" name="motto" placeholder="Motto"></div>
						</div>
						<div class="form-group">
							<div class="checkbox">
								<span class="col-xs-offset-7">I agree to the terms.</span>
								<input type="checkbox" class="col-xs-2" value="y">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-default" data-dismiss="modal">close</button>
						<button type="button" class="btn btn-success" onclick="join();">submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- finding email moda -->
	<div class="modal fade" id="modal-find-email">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
 					<h2 class="modal-title">Finding email</h2>
 				</div>
				<form id="form-find-email" class="form-horizontal">
					<div class="modal-body">
						<div class="form-group">
							<!-- name -->
							<label for="name" class="col-xs-3 control-label">Name</label>
							<div class="col-xs-6"><input type="text" class="form-control" name="name" placeholder="Name"></div>
						</div>
						<div class="form-group">
							<!-- birthdate -->
							<label for="birthdate" class="col-xs-3 control-label">Birthdate</label>
							<div class="col-xs-6"><input type="date" class="form-control" name="birthdate" placeholder="Birthdate"></div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-default" data-dismiss="modal">close</button>
						<button type="button" class="btn btn-success" onclick="findEmail();">submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- finding password modal -->
	<div class="modal fade" id="modal-find-pw">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
 					<h2 class="modal-title">Finding Password</h2>
 				</div>
				<form id="form-find-pw" class="form-horizontal">
					<div class="modal-body">
						<div class="form-group">
							<!-- e-mail -->
							<label for="email" class="col-xs-3 control-label">e-mail</label>
							<div class="col-xs-6"><input type="email" class="form-control" name="email" placeholder="e-mail"></div>
						</div>
						<div class="form-group">
							<!-- verification code -->
							<div class="col-xs-offset-3 col-xs-6"><input type="text" class="form-control" placeholder="Verification Code"></div>
							<button type="button" class="btn btn-info" onclick="sendCode()">Send</button>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-default" data-dismiss="modal">close</button>
						<button type="button" class="btn btn-success" onclick="findPw();">submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- login form -->
	<div class="container">
		<form id="form-login">
			<div class="IH-title">NEXT LINE</div>
   			<div class="form-group">
   				<!-- e-mail -->
   				<label for="email" class="sr-only">e-mail</label> 
     				<input type="email" class="form-control" name="email" placeholder="e-mail">
   			</div>	
   			<div class="form-group">
   				<!-- password -->
   				<label for="email" class="sr-only">Password</label> 
     				<input type="password" class="form-control" name="password" placeholder="Password">
   			</div>
   			<div class="checkbox">
				<input type="checkbox" class="col-xs-2" value="y">
				<span class="col-xs-offset-1">Remember me.</span>
			</div>
   			<div class="IH-btn">
   				<button type="button" class="btn btn-primary" onclick="login();">Sign In</button>
   				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-join">Join Us</button>
   			</div>
   			<div class="IH-link">
   				I forget my <strong><a data-toggle="modal" data-target="#modal-find-email">e-mail</a></strong> / <strong><a data-toggle="modal" data-target="#modal-find-pw">password</a></strong>.
   			</div>
		</form>
	</div>

	<%@ include file="include/footer.jsp" %>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/login.js"></script>
	<script type="text/javascript">
	</script>
</body>
</html>