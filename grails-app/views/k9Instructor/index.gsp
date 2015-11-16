<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexinstructor"/>
        <title>Seguridog - Instructor</title>
	</head>

	<body>
<<<<<<< HEAD
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Instructor Canino: ${session.user.fullName}</h1>
    				</div>
	    		</div>
		    </div>
    	</div>
=======
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
							<a href="features.html">Información</a>
						</li>
						<li>
							<a href="credits.html">Créditos</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- main content -->
		<div id="page-content">
			<h2>Bienvenido Instructor, ${flash.message}</h2>
			<li><g:link controller="k9Instructor" action="register_ExerciseAbility">Registrar Habilidades del Canino.</g:link> </li>
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
>>>>>>> 48d204b68144299d5b91bff6853bcb2165a3e25e
	</body>
</html>