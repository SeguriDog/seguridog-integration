<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
    </head>

    <body>
    	<!-- Page Title -->
    <br><br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Libro de Ubicación de Servicio</h1>
    				</div>
	    		</div>
		    </div>
    	</div>
	    <!-- main content -->
        <div class="section blog-posts-wrapper">
	    	<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="blog-post">
							<!-- Post Image -->
	                        <img src="${request.contextPath}/purpose/img/canines/${book_service_list.canines.photoCanine}">
							<!-- End Post Image -->
							<!-- Post Title & Summary -->
							<div class="post-title">
								<h3>${book_service_list.canines.nameCanine}</h3>
							</div>
							<div class="post-summary">
								<p><b>Microchip:</b>${book_service_list.canines.microChip}</p>
                                <p><b>Raza:</b>${book_service_list.canines.typeRace}</p>
                                <p><b>Sexo:</b>${book_service_list.canines.sexCanine}</p>
							</div>
							<!-- End Post Title & Summary -->
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="blog-post">
							<!-- Post Image -->
	                        <img src="${request.contextPath}/purpose/img/users/${book_service_list.handlers.photoUser}">
							<!-- End Post Image -->
							<!-- Post Title & Summary -->
							<div class="post-title">
								<h3>${book_service_list.handlers.fullName}</h3>
							</div>
							<div class="post-summary">
								<p><b>Cédula:</b>${book_service_list.handlers.cedula}</p>
                                <p><b>Teléfono:</b>${book_service_list.handlers.cellphone}</p>
                                <p><b>Email:</b>${book_service_list.handlers.eMail}</p>
							</div>
							<!-- End Post Title & Summary -->
						</div>
					</div>
				</div>
			</div>
	    </div>
        <div class="section">
	    	<div class="container">
	    		<div class="row">
	    			<div class="col-sm-12">
	    				<div class="tabbable">
	    					<!-- Tabs -->
							<ul class="nav nav-tabs product-details-nav">
								<li class="active"><a href="#tab1" data-toggle="tab">Servicio</a></li>
							</ul>
							<!-- Tab Content (Full Description) -->
							<div class="tab-content product-detail-info">
								<div class="tab-pane active" id="tab1">
									<h4>Fecha ubicación en el puesto</h4>
									<p>
										<g:formatDate format="dd-MM-yyyy" date="${book_service_list.dateUbicationWorkArea}"/>
									</p>
									<h4>Fecha de regreso a la unidad canina</h4>
									<p>
										<g:formatDate format="dd-MM-yyyy" date="${book_service_list.dateFinishReturnUnitK9}"/>
									</p>
									<h4>Dirección donde presta servicio</h4>
									<p>
										${book_service_list.addressUbicationWorkArea}
									</p>
									<h4>Dirección donde descansa canino</h4>
									<p>
										${book_service_list.addressRestCanine}
									</p>
									<h4>Modalidad del servicio</h4>
									<p>
										${book_service_list.typeService}
									</p>
								</div>
							</div>
						</div>
	    			</div>
	    		</div>
			</div>
		</div>
    	<!-- end main content -->
	</body>
</html>
