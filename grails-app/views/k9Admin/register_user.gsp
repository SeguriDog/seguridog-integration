<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="${request.contextPath}/purpose/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="${request.contextPath}/purpose/js/fileinput.min.js" type="text/javascript"></script>
	</head>

	<body>
		<!-- main content -->
		 <br><br><br><br><br><br><br><br><br><br><br>
            	<!-- Page Title -->
        	    <div class="section section-breadcrumbs">
        		    <div class="container">
        			    <div class="row">
        				    <div class="col-md-12">
        					    <h1>Registrar Usuario</h1>
            				</div>
        	    		</div>
        		    </div>
            	</div>

        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<div class="basic-login">
							<g:form controller = "K9Admin" action="save_data_user">

								<div class="form-group">
                                    <label for="photoUser"><i class="icon-user"></i> <b>Foto de usuario</b></label>
                                    <input class="form-control" name="photoUser" id="photoUser" type="file" accept="image/*">
                                </div>
                                <div class="form-group">
		        				 	<label for="cedula"><i class="icon-user"></i> <b>Cédula</b></label>
									<input class="form-control" id="cedula" name="cedula" type="text" placeholder="Ingrese cedula">
								</div>
								<div class="form-group">
                                    <label for="firstName"><i class="icon-user"></i> <b>Nombre</b></label>
                           			<input class="form-control" id="firstName" name="firstName" type="text" placeholder="Ingrese nombre">
                           		</div>
                           		<div class="form-group">
                                    <label for="lastName"><i class="icon-user"></i> <b>Apellido</b></label>
                                    <input class="form-control" id="lastName" name="lastName" type="text" placeholder="Ingrese apellido">
                                </div>
                                <div class="form-group">
                                    <label for="loginUser"><i class="icon-user"></i> <b>Usuario</b></label>
                                    <input class="form-control" id="loginUser" name="loginUser" type="text" placeholder="Ingrese usuario">
                                </div>
                                <div class="form-group">
                                	<label for="loginPass"><i class="icon-lock"></i> <b>Contrasenia</b></label>
              						<input class="form-control" id="loginPass" name="loginPass" type="password" placeholder="ingrese contrasenia">
                                </div>
                                <div class="form-group">
                                    <label for="birthDate"><i class="icon-user"></i> <b>Fecha de Nacimiento</b></label>
                                    <input class="form-control" id="birthDate" name="birthDate" type="text" placeholder="Ingrese fecha">
                                </div>
                                <div class="form-group">
                                    <label for="cellphone"><i class="icon-user"></i> <b>Teléfono</b></label>
                                    <input class="form-control" id="cellphone" name="cellphone" type="tel" placeholder="Ingrese telefono">
                                </div>
                                <div class="form-group">
                                    <label for="eMail"><i class="icon-user"></i> <b>Correo Electrónico</b></label>
                                    <input class="form-control" id="eMail" name="eMail" type="email" placeholder="Ingrese correo">
                                </div>
                                <div class="form-group">
                                    <label for="typeContract"><i class="icon-user"></i> <b>Tipo de contrato</b></label>
                                    <input class="form-control" id="typeContract" name="typeContract" type="text" placeholder="Ingrese contrato">
                                </div>
                                <div class="form-group">
                                    <label for="dateContract"><i class="icon-user"></i> <b>Fecha de Contrato</b></label>
                                    <input class="form-control" id="dateContract" name="dateContract" type="text" placeholder="Ingrese fecha">
                                </div>
                                <div class="form-group">
                                    <label for="typeUsers"><i class="icon-user"></i> <b>Tipo de usuario</b></label>
                                    <select name="typeUsers" id="typeUsers" type="number" SIZE="1">
                                    			<option value="1">Seleccione tipo..</option>
                                    			<option value="2">Instructor</option>
                                    			<option value="3">Veterinario</option>
                                    			<option value="4">Manejador</option>
                                    </select>
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
		${flash.message}
		<!-- end main content -->
	</body>
	<script>
           $("#photoUser").fileinput({
              previewFileType: "image",
              showCaption: false,
              showUpload: false,
              showRemove: true,
              browseClass: "btn btn-success",
              browseLabel: "Pick Image",
              browseIcon: "<i class=\"glyphicon glyphicon-picture\"></i> ",
              removeClass: "btn btn-danger",
              removeLabel: "Delete",
              removeIcon: "<i class=\"glyphicon glyphicon-trash\"></i> "
           });
    </script>
</html>