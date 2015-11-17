<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexhandler"/>
        <title>Seguridog - Manejador</title>
    </head>

    <body>
    	<!-- Page Title -->
    	<br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Historial Actividades</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

	    <!-- main content -->
        <div class="section blog-posts-wrapper">
            <div class="container">
                <div class="row">
                    <g:each in="${activities_list}" var="aList">
                        <div class="col-md-4 col-sm-6">
                            <div class="blog-post">
                                <div class="post-title">
                                    <h3>Usuario: ${aList.userOfService}</h3>
                                    <h3>Dirección: ${aList.addressUbicationWorkArea}</h3>
                                </div>
                                <div class="post-summary">
                                    <li>Fecha inicio: <g:formatDate format="dd-MM-yyyy" date="${aList.dateUbicationWorkArea}"/></li>
                                    <li>Horas por día: ${aList.hoursPerDay}</li>
                                    <li>Modalidad: ${aList.typeService}</li>
                                    <li>Canino: ${aList.canines.nameFullCanine}</li>
                                    <li>Dir.Reposo Canino: ${aList.addressRestCanine}</li>
                                    <li>Fecha fin: <g:formatDate format="dd-MM-yyyy" date="${aList.dateFinishReturnUnitK9}"/></li>
                                </div>
                            </div>
                        </div>
                    </g:each>
                </div>
            </div>
        </div>
    	<!-- end main content -->
	</body>
</html>
