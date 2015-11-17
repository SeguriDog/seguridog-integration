<!DOCTYPE html>
	<head>
		<meta name="layout" content="main"/>
		<title>Seguridog - Login</title>
	</head>

	<body>
		<!-- main content -->
		<br><br><br><br><br><br>
       <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-5">
						<div class="basic-login">
							<g:form controller = "K9User" action="authenticate">
								<div class="form-group">
		        				 	<label for="loginUser"><i class="icon-user"></i> <b>Username</b></label>
									<input class="form-control" id="loginUser" name="loginUser" type="text" placeholder="">
								</div>
								<div class="form-group">
		        				 	<label for="loginPass"><i class="icon-lock"></i> <b>Password</b></label>
									<input class="form-control" id="loginPass" name="loginPass" type="password" placeholder="">
								</div>
								<div class="form-group">
									<button type="submit" class="btn pull-right">Login</button>
									<div class="clearfix"></div>
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
		${flash.message}
		<!-- end main content -->
	</body>
</html>