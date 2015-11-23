<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexhandler"/>
        <title>Seguridog - Manejador</title>
    </head>

    <body>
    <br><br><br><br><br><br><br><br><br><br><br>
    	<!-- Page Title -->
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Perfil del Usuario</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

	    <!-- main content -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <div class="basic-login">
                            <g:form controller="k9Handler" action="save_profile_user">
								<div class="form-group">
                                    <label for="firstName"><i class="icon-user"></i> <b>Nombre:</b></label>
                           			<input class="form-control" id="firstName" name="firstName" type="text" value="${edit_user.firstName}">
                           		</div>
                           		<div class="form-group">
                                    <label for="lastName"><i class="icon-user"></i> <b>Apellido</b></label>
                                    <input class="form-control" id="lastName" name="lastName" type="text" value="${edit_user.lastName}">
                                </div>
                                <div class="form-group">
                                    <label for="loginUser"><i class="icon-user"></i> <b>Usuario</b></label>
                                    <input class="form-control" id="loginUser" name="loginUser" type="text" value="${edit_user.loginUser}">
                                </div>
                                <div class="form-group">
                                	<label for="loginPass"><i class="icon-lock"></i> <b>Contraseña</b></label>
              						<input class="form-control" id="loginPass" name="loginPass" type="text" value="${edit_user.loginPass}">
                                </div>
                                <div class="form-group">
                                    <label for="birthDate"><i class="icon-user"></i> <b>Fecha de Nacimiento</b></label>
                                    <input class="form-control" id="birthDate" name="birthDate" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_user.birthDate}"/>">
                                </div>
                                <div class="form-group">
                                    <label for="cellphone"><i class="icon-user"></i> <b>Teléfono</b></label>
                                    <input class="form-control" id="cellphone" name="cellphone" type="tel" value="${edit_user.cellphone}">
                                </div>
                                <div class="form-group">
                                    <label for="eMail"><i class="icon-user"></i> <b>Correo Electrónico</b></label>
                                    <input class="form-control" id="eMail" name="eMail" type="email" value="${edit_user.eMail}">
                                </div>
                               <div class="form-group">
                                    <button type="submit" class="btn pull-right">Guardar</button>
                                    <div class="clearfix"></div>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    	<!-- end main content -->
	</body>
</html>
