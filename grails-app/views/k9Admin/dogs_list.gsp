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
		<div class="container">
          <h2>Perros Registrados</h2>
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
              	  <th>Foto</th>
                  <th>Nombre</th>
                  <th>Fecha Nacimiento</th>
                  <th>Sexo</th>
                  <th>Raza</th>
                  <th>Color</th>
                  <th>Microchip</th>
                  <th>Estado</th>
             </tr>
            </thead>
            <tbody>
            <g:each in="${dogs}" var="dog">
              <tr>
              	  <td><img src="${request.contextPath}/purpose/img/canines/${dog.photoCanine}"></td>
                  <td>${dog.nameCanine}</td>
                  <td>${dog.dateBirthday}</td>
                  <td>${dog.sexCanine}</td>
                  <td>${dog.typeRace}</td>
                  <td>${dog.colorCanine}</td>
                  <td>${dog.microChip}</td>
                  <td>${dog.stateCanine}</td>
              </tr>
            </g:each>
            </tbody>
          </table>
        </div>

		<!-- end main content -->

		<!-- Footer -->
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="footer-copyright">&copy; 2013 mPurpose. All rights reserved.</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Javascripts -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="${request.contextPath}/purpose/js/jquery-1.9.1.min.js"><\/script>')</script>
		<script src="${request.contextPath}/purpose/js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.fitvids.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.sequence-min.js"></script>
		<script src="${request.contextPath}/purpose/js/jquery.bxslider.js"></script>
		<script src="${request.contextPath}/purpose/js/main-menu.js"></script>
		<script src="${request.contextPath}/purpose/js/template.js"></script>
	</body>
</html>