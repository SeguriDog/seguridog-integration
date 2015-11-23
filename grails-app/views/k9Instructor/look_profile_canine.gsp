<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexinstructor"/>
        <title>Seguridog - Instructor</title>
    </head>

    <body>
    	<!-- Page Title -->
    <br><br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Información del Canino</h1>
    				</div>
	    		</div>
		    </div>
    	</div>
	    <!-- main content -->
        <div class="section">
	    	<div class="container">
	    		<div class="row">
	    			<div class="col-sm-6">
	    				<div class="product-image-large">
	                        <img src="${request.contextPath}/purpose/img/canines/${canine_info.photoCanine}">
	    				</div>
	    			</div>
	    			<div class="col-sm-6 product-details">
	    				<h4>${canine_info.nameCanine}</h4>
						<h5>Datos:  </h5>
                        <p><b>Microchip:  </b>${canine_info.microChip}</p>
                        <p><b>Fecha Nacimiento:  </b><g:formatDate format="dd-MM-yyyy" date="${canine_info.dateBirthday}"/></p>
						<p><b>Nombre Padre:  </b>${canine_info.nameFather}</p>
						<p><b>Nombre Madre:  </b>${canine_info.nameMother}</p>
						<p><b>Sexo:  </b>${canine_info.sexCanine}</p>
						<p><b>Raza:  </b>${canine_info.typeRace}</p>
						<p><b>Color:  </b>${canine_info.colorCanine}</p>
						<p><b>Rasgos:  </b>${canine_info.signCanine}</p>
                        <g:form controller="k9Instructor" action="edit_profile_canine">
                            <div class="form-group">
                                <input class="form-control" id="id_canine_edit" name="id_canine_edit" type="hidden" value="${canine_info.id}">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn pull-right">Editar</button>
                            <div class="clearfix"></div>
                            </div>
                        </g:form>
	    			</div>
	    			<!-- Full Description & Specification -->
	    			<div class="col-sm-12">
	    				<div class="tabbable">
	    					<!-- Tabs -->
							<ul class="nav nav-tabs product-details-nav">
								<li class="active"><a href="#tab1" data-toggle="tab">Entrenamiento</a></li>
								<li><a href="#tab2" data-toggle="tab">Historia Clínica</a></li>
							</ul>
							<!-- Tab Content (Full Description) -->
							<div class="tab-content product-detail-info">
								<div class="tab-pane active" id="tab1">
									<table>
										<g:each in="${canine_training}" var="cTraining">
											<tr>
												<td><g:formatDate format="dd-MM-yyyy" date="${cTraining.dateAbility}"/> -> Entrenador: ${cTraining.instructors.fullName}</td>
												<td style="width: 50%">Tipo: ${cTraining.typeAbility}</td>
												<td style="width: 50%">Nombre: ${cTraining.nameAbility}</td>
											</tr>
										</g:each>
									</table>
								</div>
								<div class="tab-pane" id="tab2">
									<table>
										<g:each in="${canine_clinic}" var="cClinic">
											<tr>
												<td><g:formatDate format="dd-MM-yyyy" date="${cClinic.dateTreatment}"/> -> Entrenador: ${cClinic.medics.fullName}</td>
												<td style="width: 50%">Tipo: ${cClinic.typeTreatment}</td>
												<td style="width: 50%">Nombre: ${cClinic.nameTreatment}</td>
											</tr>
										</g:each>
									</table>
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
