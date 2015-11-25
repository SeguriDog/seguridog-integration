<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
	</head>

	<body>
		<!-- main content -->
		<br><br><br><br><br><br><br><br><br><br><br>
                    	<!-- Page Title -->
                	    <div class="section section-breadcrumbs">
                		    <div class="container">
                			    <div class="row">
                				    <div class="col-md-12">
                					    <h1>Registrar servicio canino</h1>
                    				</div>
                	    		</div>
                		    </div>
                    	</div>


        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<div class="basic-login">
							<g:form controller = "K9Admin" action="save_data_service">
								<div class="form-group" >
									<label for="handler_id"><i class="icon-user"></i> <b>Manejadores de Perros</b></label>
                                    <g:select name="handler_id"
                                              id="handler_id"
                                              from="${handler_list}"
                                              value=""
                                              optionKey="id"
                                              optionValue="fullName"
                                              noSelection="['':'Seleccione uno...']"/>
								</div>
                                <div class="form-group">
                                    <label for="canine_id"><i class="icon-user"></i> <b>Perro</b></label>
                                    <g:select name="canine_id"
                                              id="canine_id"
                                              from="${canine_list}"
                                              value=""
                                              optionKey="id"
                                              optionValue="nameFullCanine"
                                              noSelection="['':'Seleccione uno...']"/>
                                </div>

                                <div class="form-group">
                                    <label for="userService"><i class="icon-user"></i> <b>Nombre del contratante y/o usuario:</b></label>
                                    <input class="form-control" id="userService" name="userService" type="text" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="addressWorkArea"><i class="icon-user"></i> <b>Dirección donde prestan el servicio:</b></label>
                                    <input class="form-control" id="addressWorkArea" name="addressWorkArea" type="text" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="dateWorkArea"><i class="icon-user"></i> <b>Fecha de inicio de labor:</b></label>
                                    <input class="form-control" id="dateWorkArea" name="dateWorkArea" type="date" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="hoursPerDay"><i class="icon-user"></i> <b>Horas por día:</b></label>
                                    <input class="form-control" id="hoursPerDay" name="hoursPerDay" type="number" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="typeService"><i class="icon-user"></i> <b>Modalidad del servicio</b></label>
                                    <select name="typeService" id="typeService" type="text">
                                        <option value="Fija">Fija</option>
                                        <option value="Movil">Móvil</option>
                                    </select>
                                </div>


								<div class="form-group">
									<label for="dateFinishWork"><i class="icon-user"></i> <b>Fecha de inicio de labor:</b></label>
									<input class="form-control" id="dateFinishWork" name="dateFinishWork" type="date" placeholder="">
								</div>
							    <div class="form-group">
									<label for="addressRestCanine"><i class="icon-user"></i> <b>Dirección de descanso del Perro:</b></label>
									<input class="form-control" id="addressRestCanine" name="addressRestCanine" type="text" placeholder="">
								</div>

								<div class="form-group">
									<button type="submit" class="btn pull-right">Guardar</button>
									<div class="clearfix"></div>
								</div>

							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end main content -->
	</body>
</html>