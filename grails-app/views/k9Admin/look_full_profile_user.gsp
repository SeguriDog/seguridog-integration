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
					    <h1>Información del Usuario</h1>
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
	                        <img src="${request.contextPath}/purpose/img/users/${full_user.photoUser}">
	    				</div>
	    			</div>
	    			<div class="col-sm-6 product-details">
	    				<h4>${full_user.fullName}</h4>
						<h5>Datos Personales:  </h5>
                        <p><b>Cedula:  </b>${full_user.cedula}</p>
                        <p><b>Fecha Nacimiento:  </b><g:formatDate format="dd-MM-yyyy" date="${full_user.birthDate}"/></p>
                        <p><b>No. Telefónico:  </b>${full_user.cellphone}</p>
						<p><b>Email:  </b>${full_user.eMail}</p>
                        <p><b>Nombre Usuario:  </b>${full_user.loginUser}</p>
                        <p><b>Contraseña:  </b>${full_user.loginPass}</p>
                        <p><b>Tipo Contrato:  </b>${full_user.typeContract}</p>
						<p><b>Fecha Inicio Contrato:  </b><g:formatDate format="dd-MM-yyyy" date="${full_user.dateContract}"/></p>
	    			</div>
					<g:if test="${full_user.typeUsers == 2}">
		    			<!-- Full Description & Specification -->
		    			<div class="col-sm-12">
	    					<div class="tabbable">
	    						<!-- Tabs -->
								<ul class="nav nav-tabs product-details-nav">
									<li class="active"><a href="#tab1" data-toggle="tab">Formación</a></li>
									<li><a href="#tab2" data-toggle="tab">Labores Realizadas</a></li>
								</ul>
								<!-- Tab Content (Full Description) -->
								<div class="tab-content product-detail-info">
									<div class="tab-pane active" id="tab1">
										<h4>Curso de aprobación</h4>
										<p>
											${full_user.approvedCourse}
										</p>
										<h4>Fecha de Aprobación:</h4>
										<p>
											<g:formatDate format="dd-MM-yyyy" date="${full_user.dateApproved}"/>
										</p>
										<h4>Fecha de Credenciales:</h4>
										<p>
											<g:formatDate format="dd-MM-yyyy" date="${full_user.dateCredentials}"/>
										</p>
										<h4>Especialidad:</h4>
										<p>
											${full_user.specialities}
										</p>
									</div>
									<div class="tab-pane" id="tab2">
										<table>
											<g:each in="${full_info}" var="fInfo">

											</g:each>
										</table>
									</div>
								</div>
							</div>
	    				</div>
					</g:if>
					<g:if test="${full_user.typeUsers == 3}">
    	    			<div class="col-sm-12">
	        				<div class="tabbable">
	        					<!-- Tabs -->
			    				<ul class="nav nav-tabs product-details-nav">
				    				<li class="active"><a href="#tab3" data-toggle="tab">Formación</a></li>
					    			<li><a href="#tab4" data-toggle="tab">Labores Realizadas</a></li>
						    	</ul>
							    <!-- Tab Content (Full Description) -->
    							<div class="tab-content product-detail-info">
	    							<div class="tab-pane active" id="tab3">
		    							<h4>Tarjeta Profesional:</h4>
			    						<p>
				    						${full_user.professionalCard}
					    				</p>
						    			<h4>Fecha de Expedición:</h4>
							    		<p>
								    		<g:formatDate format="dd-MM-yyyy" date="${full_user.dateExpedition}"/>
									    </p>
    								</div>
    								<div class="tab-pane" id="tab4">
	    								<table>
		    								<g:each in="${full_info}" var="lClinic">
			    								<tr>
				    								<td>${lClinic.typeTreatment} -> ${lClinic.nameTreatment}</td>
					    							<td style="width: 20%">Fecha: <g:formatDate format="dd-MM-yyyy" date="${lClinic.dateTreatment}"/> </td>
						    						<td style="width: 20%">Canino: ${lClinic.canines.nameCanine}</td>
							    					<td style="width: 60%">Modalidad: ${lClinic.evaluation}</td>
								    			</tr>
									    	</g:each>
    									</table>
	    							</div>
		    					</div>
			    			</div>
	    		    	</div>
					</g:if>
					<g:if test="${full_user.typeUsers == 4}">
    	    			<div class="col-sm-12">
	        				<div class="tabbable">
	        					<!-- Tabs -->
			    				<ul class="nav nav-tabs product-details-nav">
				    				<li class="active"><a href="#tab5" data-toggle="tab">Formación</a></li>
					    			<li><a href="#tab6" data-toggle="tab">Labores Realizadas</a></li>
						    	</ul>
							    <!-- Tab Content (Full Description) -->
    							<div class="tab-content product-detail-info">
	    							<div class="tab-pane active" id="tab5">
		    							<h4>Curso de inducción Básica</h4>
			    						<p>
				    						${full_user.basicInductionCourse}
					    				</p>
						    			<h4>Fecha de Aprobación:</h4>
							    		<p>
								    		<g:formatDate format="dd-MM-yyyy" date="${full_user.dateApprovedInduction}"/>
									    </p>
    									<h4>Tipo de entrenamiento realizado:</h4>
	    								<p>
		    								${full_user.typeTrainingHandler}
			    						</p>
				    				</div>

	    							<div class="tab-pane" id="tab6">
		    							<table>
			    							<g:each in="${full_info}" var="lActivities">
				    							<tr>
					    							<td>${lActivities.userOfService} -> ${lActivities.addressUbicationWorkArea}</td>
						    						<td style="width: 20%">Fecha: <g:formatDate format="dd-MM-yyyy" date="${lActivities.dateUbicationWorkArea}"/> </td>
							    					<td style="width: 20%">Canino: ${lActivities.canines.nameCanine}</td>
								    				<td style="width: 60%">Modalidad: ${lActivities.typeService}</td>
    											</tr>
	    									</g:each>
		    							</table>
			    					</div>
				    			</div>
					    	</div>
    	    			</div>
					</g:if>
	    		</div>
			</div>
		</div>
    	<!-- end main content -->
	</body>
</html>
