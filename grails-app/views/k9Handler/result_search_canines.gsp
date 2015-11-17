<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexhandler"/>
        <title>Seguridog - Manejador</title>
	</head>

	<body>
	<br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Resultado de Búsqueda de Canino(s)</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

		<div class="section">
	        <div class="container">
				<g:each in="${result_canine}" var="rCanine">
                    <div class="row service-wrapper-row">
                        <div class="col-sm-4">
                            <div class="service-image">
                                <img src="${request.contextPath}/purpose/img/canines/${rCanine.photoCanine}">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3>${rCanine.nameCanine}</h3>
                            <li><b>Microchip: </b>${rCanine.microChip}</li>
                            <li><b>Color: </b>${rCanine.colorCanine}</li>
                            <li><b>Fecha Nacimiento: </b><g:formatDate format="dd-MM-yyyy" date="${rCanine.dateBirthday}"/></li>
                            <li><b>Sexo: </b>${rCanine.sexCanine}</li>
                            <li><b>Raza: </b>${rCanine.typeRace}</li>
                            <li><b>Estado: </b>${rCanine.stateCanine}</li>
                        </div>
                    </div>
				</g:each>
	        </div>
	    </div>
        <li>${flash.message}</li>
	</body>
</html>
