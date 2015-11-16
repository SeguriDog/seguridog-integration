<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexhandler"/>
        <title>Seguridog - Manejador</title>
    </head>

    <body>
     	<!-- Page Title -->
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Actividades Actuales</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

	    <!-- main content -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <table class="events-list">
                            <g:each in="${curActivities_list}" var="cList">
                                <tr>
                                    <td>
                                        <div class="event-date">
                                            <div class="event-day"><g:formatDate format="dd" date="${cList.dateUbicationWorkArea}"/></div>
                                            <div class="event-month"><g:formatDate format="MMM" date="${cList.dateUbicationWorkArea}"/></div>
                                        </div>
                                    </td>
                                    <td>
                                        Dirección: ${cList.addressUbicationWorkArea}, Canino: ${cList.canines.nameCanine} - Reposo: ${cList.addressRestCanine}.
                                    </td>
                                    <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Modalidad:${cList.typeService}</td>
                                    <td class="event-price hidden-xs">Horas: ${cList.hoursPerDay}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="event-date">
                                            <div class="event-day"><g:formatDate format="dd" date="${cList.dateFinishReturnUnitK9}"/></div>
                                            <div class="event-month"><g:formatDate format="MMM" date="${cList.dateFinishReturnUnitK9}"/></div>
                                        </div>
                                    </td>
                                    <td align="left">
                                        Finalización de la actividad.
                                    </td>
                                </tr>
                            </g:each>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- end main content -->
	</body>
</html>