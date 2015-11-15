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
							<li><g:link controller="k9User" action="logout">Logout</g:link> </li>
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
	    	<h2>Formulario : Registro de Perro</h2>
				<div class="row">
					<div class="col-sm-5">
						<div class="basic-login">
							<g:form controller = "K9Admin" action="save_data_dog">

								<div class="form-group">
                                    <label for="photoCanine"><i class="icon-user"></i> <b>Foto de perro</b></label>
                                    <input class="form-control" name="photoCanine" id="photoCanine" type="file" accept="image/*">
                                </div>
								<div class="form-group">
                                    <label for="name_canine"><i class="icon-user"></i> <b>Nombre</b></label>
                           			<input class="form-control" id="name_canine" name="name_canine" type="text" placeholder="Ingrese nombre">
                           		</div>
                                <div class="form-group">
                                    <label for="date_birthday"><i class="icon-user"></i> <b>Fecha de Nacimiento</b></label>
                                    <input class="form-control" id="date_birthday" name="date_birthday" type="text" placeholder="Ingrese fecha">
                                </div>
                                <div class="form-group">
                                    <label for="type_race"><i class="icon-user"></i> <b>Tipo de raza</b></label>
                                    <input class="form-control" id="type_race" name="type_race" type="text" placeholder="Ingrese raza">
                                </div>
                                <div class="form-group">
                                    <label for="color_canine"><i class="icon-user"></i> <b>Color</b></label>
                                    <input class="form-control" id="color_canine" name="color_canine" type="text" placeholder="Ingrese color">
                                </div>
                                <div class="form-group">
                                   <label for="sex_canine"><i class="icon-user"></i> <b>Sexo</b></label>
                                   <div class="radio">
                                     <label>
                                       <input type="radio" name="sex_canine" id="sex_canine" value="macho">
                                       Macho
                                     </label>
                                   </div>
                                   <div class="radio">
                                     <label>
                                       <input type="radio" name="sex_canine" id="sex_canine" value="hembra">
                                       Hembra
                                     </label>
                                   </div>
                                </div>
                                 <div class="form-group">
                                    <label for="micro_chip"><i class="icon-user"></i> <b>Microchip</b></label>
                                    <input class="form-control" id="micro_chip" name="micro_chip" type="text" placeholder="Ingrese microchip">
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
               $("#photoCanine").fileinput({
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