<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
        <script src="${request.contextPath}/purpose/js/Chart.js" type="text/javascript"></script>
    </head>

    <body>

<script type="text/javascript" language="JavaScript">
function draw(n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12){

var radarChartData = {
		labels: ["Obediencia", "Aprendizaje", "Caracter", "Exploracion","Contacto", "Escape", "Actitud", "Dominado","Relacion con Manejador", "Comunicacion", "Estabilidad emocional", "Agresividad"],
		datasets: [
			{
				label: "My First dataset",
				fillColor: "rgba(220,220,220,0.2)",
				strokeColor: "rgba(220,220,220,1)",
				pointColor: "rgba(220,220,220,1)",
				pointStrokeColor: "#fff",
				pointHighlightFill: "#fff",
				pointHighlightStroke: "rgba(220,220,220,1)",
				data: [n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12]
			}
		]
	};

var pieData = [
				{
					value: n1,
					color:"#0b82e7",
					highlight: "#0c62ab",
					label: "Obediencia"
				},
				{
					value: n2,
					color: "#e3e860",
					highlight: "#a9ad47",
					label: "Aprendizaje"
				},
				{
					value: n3,
					color: "#eb5d82",
					highlight: "#b74865",
					label: "Caracter"
				},
				{
					value: n4,
					color: "#5ae85a",
					highlight: "#42a642",
					label: "Exploracion"
				},
				{
					value: n5,
					color: "#e965db",
					highlight: "#a6429b",
					label: "Contacto"
				},
				{
					value: n6,
					color: "#eb5d82",
					highlight: "#b74865",
					label: "Escape"
				},
				{
					value: n7,
					color:"#0b82e7",
					highlight: "#0c62ab",
					label: "Actitud"
				},
				{
					value: n8,
					color: "#e3e860",
					highlight: "#a9ad47",
					label: "Dominado"
				},
				{
					value: n9,
					color: "#eb5d82",
					highlight: "#b74865",
					label: "Relacion con Manejador"
				},
				{
					value: n10,
					color: "#5ae85a",
					highlight: "#42a642",
					label: "Comunicacion"
				},
				{
					value: n11,
					color: "#e965db",
					highlight: "#a6429b",
					label: "Estabilidad emocional"
				},
				{
					value: n12,
					color: "#eb5d82",
					highlight: "#b74865",
					label: "Agresividad"
				},
			];
var barChartData = {
		labels: ["Obediencia", "Aprendizaje", "Caracter", "Exploracion","Contacto", "Escape", "Actitud", "Dominado","Relacion con Manejador", "Comunicacion", "Estabilidad emocional", "Agresividad"],
		datasets : [
			{
				fillColor : "#6b9dfa",
				strokeColor : "#ffffff",
				highlightFill: "#1864f2",
				highlightStroke: "#ffffff",
				data : [n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12]
			}
		]
	}
			var rd = document.getElementById("radar").getContext("2d");
            window.myRadar = new Chart(rd).Radar(radarChartData);
			var pt = document.getElementById("pastel").getContext("2d");
			window.myPie = new Chart(pt).Pie(pieData);
			var br = document.getElementById("barras").getContext("2d");
			window.myPie = new Chart(br).Bar(barChartData);
}
</script>

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
                        <g:form controller="k9Admin" action="edit_profile_canine">
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
								<li>
								<g:each in="${canine_training}" var="ability">
									<a href="#tab3" data-toggle="tab" onclick="javascript:draw(${ability.obedience},${ability.velLearning},${ability.naturePlay},${ability.natureExplore},${ability.levelContantactitude},${ability.levelExiting},${ability.actitudeGeneral},${ability.dominated},${ability.relationshipHandler},${ability.comunicativeCanine},${ability.stablityEmotional},${ability.interAgressive})">Habilidades</a>
								</g:each>
								</li>
							</ul>
							<!-- Tab Content (Full Description) -->
							<div class="tab-content product-detail-info">
								<div class="tab-pane active" id="tab1">
									<table>
										<g:each in="${canine_training}" var="cTraining">
											<tr>
												<td><g:formatDate format="dd-MM-yyyy" date="${cTraining.dateAbility}"/> -> Instructor: ${cTraining.instructors.fullName}</td>
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
												<td><g:formatDate format="dd-MM-yyyy" date="${cClinic.dateTreatment}"/> -> Veterinario: ${cClinic.medics.fullName}</td>
												<td style="width: 50%">Tipo: ${cClinic.typeTreatment}</td>
												<td style="width: 50%">Nombre: ${cClinic.nameTreatment}</td>
											</tr>
										</g:each>
									</table>
								</div>
								<div class="tab-pane" id="tab3">
									<canvas id="radar" height="600" width="600"></canvas>
									<canvas id="pastel" width="380" height="380"></canvas>
									<canvas id="barras" width="600" height="600"></canvas>
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
