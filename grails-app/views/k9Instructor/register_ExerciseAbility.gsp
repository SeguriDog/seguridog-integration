<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexinstructor"/>
        <title>Seguridog - Instructor</title>
	</head>

	<body>
    		<br><br><br><br><br><br><br><br><br><br><br>
			<div class="section section-breadcrumbs">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<h1>Registro del desempeño del Binomio (Canino-Manejador)</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="section">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<g:form controller="k9Instructor" action="all_Canines">
								<div class="form-group">
									<label for="name_canine"><i class="icon-user"></i>Canino</label>
									<select class="form-control" id="name_canine" name="name_canine">
										<g:each in="${result_name_canine}" var="rCanine">
											<option>${rCanine.nameCanine}</option>
										</g:each>
									</select>
								</div>
								<button type="submit" class="btn pull-right">Enviar</button>
								<div class="clearfix"></div>
							</g:form>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="micro_chip" ><i class="icon-user"></i>Microchip</label>
								<input class="form-control" id="micro_chip" name="micro_chip" type="text">
							</div>
						</div>
						<BR><BR>
						<div class="col-md-12">
							<div class="form-group">
								<label for="name_ability"><i class="icon-user"></i>Nombre del Manejdor</label>
								<input class="form-control" id="name_ability" name="date_ability" type="text">
							</div>
						</div>
					</div>
					<BR><BR><BR>
					<p align="center"><b>DATOS EJEMPLAR DEL CANINO</b></p>
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>Nombre del Canino</th>
								<th>Raza</th>
								<th>Color</th>
								<th>Sexo</th>
								<th>Edad</th>
								<th>Especialidad</th>
								<th>MicroChip</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${}</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							<tr>
						</tbody>
					</table>
					<BR>
					<div class="row">
						<p align="center"><b>RESULTADOS DE LA EVALUACION</b></p>
						<div class="col-md-6">
							<p align="center"><b>EJEMPLAR CANINO</b></p>
						</div>
						<div class="col-md-6">
							<p align="center"><b>MANEJADOR</b></p>
						</div>
						<div class="col-md-12">
							<p><b>1. Obediencia básica</b></p>
						</div>
						<div class="col-md-4">
							<p>a. Sentado</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>a. Manejo de la Tradilla</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>b. Echado</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>b. Indicación</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>c. Llamado</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>c. Control Canino</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>d. Quieto</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>d. Entonación</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>e. Caminar al lado</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-4">
							<p>e. Premia adecuadamente</p>
						</div>
						<div class="col-md-2">
							<label class="radio-inline"><input type="radio" name="optradio">SI</label>
							<label class="radio-inline"><input type="radio" name="optradio">NO</label>
						</div>
						<div class="col-md-12">
							<p><b>2. Ejercicios de Especialidad</b></p>
						</div>
						<div class="col-md-6">
							<p align="center"><b>Defensa Controlada</b></p>
							<div class="row">
								<div class="col-md-8">
									<p>a. Ejercicio de Alertar y Orden</p>
								</div>
								<div class="col-md-4">
									<label class="radio-inline"><input type="radio" name="optradio">SI</label>
									<label class="radio-inline"><input type="radio" name="optradio">NO</label>
								</div>
								<div class="col-md-8">
									<p>b. Ejercico de inmovilizar</p>
								</div>
								<div class="col-md-4">
									<label class="radio-inline"><input type="radio" name="optradio">SI</label>
									<label class="radio-inline"><input type="radio" name="optradio">NO</label>
								</div>
								<div class="col-md-8">
									<p>c. Ejercicio de soltar y vigilar (agresor).</p>
								</div>
								<div class="col-md-4">
									<label class="radio-inline"><input type="radio" name="optradio">SI</label>
									<label class="radio-inline"><input type="radio" name="optradio">NO</label>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="Elements">Elementos Utilizados:</label>
								<textarea class="form-control" rows="3" id="Elements"></textarea>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="Observations">Observaciones:</label>
								<textarea class="form-control" rows="3" id="Observations"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="recomendations">Recomendaciones:</label>
								<textarea class="form-control" rows="3" id="recomendations"></textarea>
							</div>
						</div>
					</div>
					<input type="submit" class="btn btn-info" value="Enviar">
				</div>
			</div>
    	</body>
    </html>