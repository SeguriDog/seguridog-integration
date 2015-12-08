<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
	</head>

	<body>
		<br><br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Administrador del Sistema: ${session.user.fullName}</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

       <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-5 col-sm-offset-3">
						<div class="basic-login">
							<g:form controller = "K9Admin" action="calendar">
								<div class="form-group">
                                    <p align="center"><button type="submit" class="btn pull">Calendario</button></p>
									<div class="clearfix"></div>
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
