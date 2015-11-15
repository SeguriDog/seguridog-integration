<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>SeguriDog</title>
		<meta name="login" content="">
		<meta name="viewport" content="width=device-width">
		<link rel="shortcut icon" href="${assetPath(src: 'dog.png')}" type="image/x-icon">
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/bootstrap.min.css">
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/icomoon-social.css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

		<link rel="stylesheet" href="${request.contextPath}/purpose/css/leaflet.css" />
		<!--[if lte IE 8]>
			<link rel="stylesheet" href="${request.contextPath}/purpose/css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="${request.contextPath}/purpose/css/main.css">

		<script src="${request.contextPath}/purpose/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>

		<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="${request.contextPath}/purpose/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="${request.contextPath}/purpose/js/fileinput.min.js" type="text/javascript"></script>

	</head>

	<body>
		<!--[if lt IE 7]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

		<!-- Navigation & Logo-->
		<div class="mainmenu-wrapper">
			<div class="container">
				<div class="menuextras">
					<div class="extras">
						<ul>
							<li><g:link controller="k9User" action="logout">Logout</g:link></li>
						</ul>
					</div>
				</div>
				<nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><img src="${request.contextPath}/purpose/img/SeguriDog-logo.png" alt="Multipurpose Twitter Bootstrap Template"></li>
						<li class="active">
							<a href="index.html">Inicio</a>
						</li>
						<li>
							<a href="features.html">Informacion</a>
						</li>
						<li>
							<a href="credits.html">Creditos</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- main content -->
       <div class="section">
	    	<div class="container">
	    	<h2>Formulario : Registro de Usuario</h2>
				<div class="row">
					<div class="col-sm-5">
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

		<!-- Footer -->
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="footer-copyright">&copy; 2015 Seguridog Team UN. Todos los derechso reservados.</div>
					</div>
				</div>
			</div>
		</div>

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