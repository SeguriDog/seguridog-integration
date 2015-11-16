<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
	</head>

	<body>
		<!-- main content -->
       <div class="section">
	    	<div class="container">
	    	<h2>Formulario : Registro de Perro</h2>
				<div class="row">
					<div class="col-sm-5">
						<div class="basic-login">
							<g:form controller = "K9Admin" action="save_data_dog">
								<div class="form-group">
                                    <label for="photoCanine"><i class="icon-user"></i> <b>Foto de perro</b></label>
                                    <input class="form-control" name="photoCanine" id="photoCanine" type="file" accept="image/*">
                                </div>
								<div class="form-group">
                                    <label for="name_canine"><i class="icon-user"></i> <b>Nombre</b></label>
                           			<input class="form-control" id="name_canine" name="name_canine" type="text" placeholder="Ingrese nombre">
                           		</div>
                                <div class="form-group">
                                    <label for="date_birthday"><i class="icon-user"></i> <b>Fecha de Nacimiento</b></label>
                                    <input class="form-control" id="date_birthday" name="date_birthday" type="text" placeholder="Ingrese fecha">
                                </div>
                                <div class="form-group">
                                    <label for="type_race"><i class="icon-user"></i> <b>Tipo de raza</b></label>
                                    <input class="form-control" id="type_race" name="type_race" type="text" placeholder="Ingrese raza">
                                </div>
                                <div class="form-group">
                                    <label for="color_canine"><i class="icon-user"></i> <b>Color</b></label>
                                    <input class="form-control" id="color_canine" name="color_canine" type="text" placeholder="Ingrese color">
                                </div>
                                <div class="form-group">
                                   <label for="sex_canine"><i class="icon-user"></i> <b>Sexo</b></label>
                                   <div class="radio">
                                     <label>
                                       <input type="radio" name="sex_canine" id="sex_canine" value="macho">
                                       Macho
                                     </label>
                                   </div>
                                   <div class="radio">
                                     <label>
                                       <input type="radio" name="sex_canine" id="sex_canine" value="hembra">
                                       Hembra
                                     </label>
                                   </div>
                                </div>
                                 <div class="form-group">
                                    <label for="micro_chip"><i class="icon-user"></i> <b>Microchip</b></label>
                                    <input class="form-control" id="micro_chip" name="micro_chip" type="text" placeholder="Ingrese microchip">
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
		${flash.message}
		<!-- end main content -->
	</body>
		<script>
               $("#photoCanine").fileinput({
                  previewFileType: "image",
                  showCaption: false,
                  showUpload: false,
                  showRemove: true,
                  browseClass: "btn btn-success",
                  browseLabel: "Pick Image",
                  browseIcon: "<i class=\"glyphicon glyphicon-picture\"></i> ",
                  removeClass: "btn btn-danger",
                  removeLabel: "Delete",
                  removeIcon: "<i class=\"glyphicon glyphicon-trash\"></i> "
               });
        </script>
</html>